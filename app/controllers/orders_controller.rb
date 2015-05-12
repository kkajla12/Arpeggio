class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :set_client_token, only: [:new, :create]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    if @cart.line_items.empty?
      redirect_to products_url, notice: "Your cart is empty"
      return
    end

    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(@cart)

    respond_to do |format|
      if @order.save
        nonce = params[:payment_method_nonce]
        result = Braintree::Transaction.sale(
          amount: "#{@cart.total_price}",
          payment_method_nonce: nonce
        )

        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        if result.success?
          format.html { redirect_to products_url, notice: 'Payment processed. Thank you for your order.' }
          format.json { render :show, status: :created, location: @order }
        else # below: ugly, will clean up later
          if result.transaction.nil?
            format.html { render :new,
              notice: "We were not able to complete your oder at this time. Please try again another time" }
            format.json { render json: @order.errors, status: :unprocessable_entity }
          else
            format.html { render :new, notice: "#{result.transaction.processor_reponse_text}" }
            format.json { render json: @order.errors, status: :unprocessable_entity }
          end
        end
      else
        format.html { render :new,
          notice: "We were not able to complete your oder at this time. Please try again another time" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :address, :email)
    end

    # set the current user's client token for Braintree
    def set_client_token
      @client_token = Braintree::ClientToken.generate
    #  (:customer_id => current_user.id)
    end
end