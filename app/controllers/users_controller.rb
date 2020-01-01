class UsersController < ApplicationController
  before_action :authenticate_user, only: [:show]

  def create
    @user =  User.create(user_params)

    @token = @user.auth_token

    render :show, status: :created
  end

  def show
    @user = User.find(params[:id]);
    authorize(@user)

    render :show
  end

  def authenticate
    @password = params[:password]
    @user = User.find_by(name: params.require(:name))

    raise InvalidCredentials if @user.nil? || !@user.authenticate(@password)

    @token = @user.auth_token

    render :show, status: :ok
  end

  private

  def user_params
    params.permit(:name, :password, :email, :gender, :age, :country, :city)
  end
end
