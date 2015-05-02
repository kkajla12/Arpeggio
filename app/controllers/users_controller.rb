class UsersController < ApplicationController
  before_action :set_user

  # GET /users/1
  # GET /users/1.json
  def show
    @products = @user.products
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params[:user]
    end
end
