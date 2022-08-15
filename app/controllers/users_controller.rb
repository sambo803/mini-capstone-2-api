class UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
    else
      render json: { errors: user.errors.full.messages}, status: :bad_request
    end
end
