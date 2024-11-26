class SessionsController < ApplicationController
  def index
    puts "HERE IS THE CURRENT USER"
    pp current_user

    @products = Product.all
    render :index
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      cookies.signed[:user_id] = { value: user.id, httponly: true }
      render json: { email: user.email, user_id: user.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end

  def destroy
    cookies.delete(:user_id)
    render json: { message: "Logged out successfully" }
  end
end
