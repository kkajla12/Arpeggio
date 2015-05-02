require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    sign_in @user
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end
end
