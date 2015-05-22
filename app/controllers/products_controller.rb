class ProductsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource :only => :edit

  # GET /products
  # GET /products.json
  def index
    # TODO: get current location vs get default location
    if current_user
      addr = "#{current_user.street_address}, #{current_user.locality}, #{current_user.region}"
    else
      addr = '580 Portola Plaza, Los Angeles, CA'
    end

    loc = Geokit::Geocoders::GoogleGeocoder.geocode addr
    if loc.nil?
      loc = Geokit::GeoLoc.new
      loc.lat = 34.0704374
      loc.lng = -118.4421695
      loc.success = true
    end

    # 1 degree ~ 70 miles
    if params[:distance] and !params[:distance].empty?
      distance = params[:distance].to_f / 70.0
    else
      distance = 1
    end

    # degrees
    w_bound = loc.lng - distance
    e_bound = loc.lng + distance
    n_bound = loc.lat - distance
    s_bound = loc.lat + distance

    if params[:keyword] and !params[:keyword].empty? and
       params[:classification] and !params[:classification].empty?
      @products = Product.where('name like ? and classification like ? and rented = ? and lat < ? and lat > ? and lon < ? and lon > ?',
                                "%#{params[:keyword]}%",
                                "%#{params[:classification]}%",
                                false, s_bound, n_bound, e_bound, w_bound).order('created_at DESC')
    elsif params[:keyword] and !params[:keyword].empty?
      @products = Product.where('name like ? and rented = ? and lat < ? and lat > ? and lon < ? and lon > ?',
                                "%#{params[:keyword]}%",
                                false, s_bound, n_bound, e_bound, w_bound).order('created_at DESC')
    elsif params[:classification] and !params[:classification].empty?
      @products = Product.where('classification like ? and rented = ? and lat < ? and lat > ? and lon < ? and lon > ?',
                                "%#{params[:classification]}%",
                                false, s_bound, n_bound, e_bound, w_bound).order('created_at DESC')
    else
      @products = Product.where('rented = ? and lat < ? and lat > ? and lon < ? and lon > ?',
                                false, s_bound, n_bound, e_bound, w_bound).order('created_at DESC')
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
      params.require(:product).permit(:id, :name, :description, :price, :deposit, :classification, :image, :lat, :lon)
    end
end
