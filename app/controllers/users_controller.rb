class UsersController < ApplicationController
  # def index
  # end

  def show
  # binding.pry
    @user = User.find(params[:id])
    # @prototype = Prototype.new
    @prototypes = @user.prototypes
    # @user = User.find_by(id: params[:user_id])
    # @prototype = Prototype.find(params[:id])
  end
end
