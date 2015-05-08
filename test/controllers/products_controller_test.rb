require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    sign_in @user

    @product = products(:one)
  end

  test "should get index" do
    get :index, :keyword => "", :classification => ""
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    test_file = fixture_file_upload('files/test.gif','image/gif')
    assert_difference('Product.count') do
      post :create, product: { deposit: @product.deposit, description: @product.description, name: @product.name, price: @product.price, rented: @product.rented, classification: @product.classification, image_url: @product.image_url, :picture => test_file }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { deposit: @product.deposit, description: @product.description, name: @product.name, price: @product.price, rented: @product.rented, classification: @product.classification, image_url: @product.image_url }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
