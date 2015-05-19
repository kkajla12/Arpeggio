class ProductsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource :only => :edit

  # GET /products
  # GET /products.json
  def index
    if params[:keyword] and !params[:keyword].empty? and
       params[:classification] and !params[:classification].empty?
      @products = Product.where('name like ? and classification like ? and rented = ?',
                                "%#{params[:keyword]}%",
                                "%#{params[:classification]}%",
                                false).order('created_at DESC')
    elsif params[:keyword] and !params[:keyword].empty?
      @products = Product.where('name like ? and rented = ?',
                                "%#{params[:keyword]}%",
                                false).order('created_at DESC')
    elsif params[:classification] and !params[:classification].empty?
      @products = Product.where('classification like ? and rented = ?',
                                "%#{params[:classification]}%",
                                false).order('created_at DESC')
    else
      @products = Product.where('rented = ?', false)
    end

    @products = @products.paginate(:page => params[:page], :per_page => 12)
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @renter_email = User.find(@product.user_id).email
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    @product.rented = false

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Your product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Your product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Your product was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:id, :name, :description, :price, :deposit, :classification, :lonlat)
    end
end
