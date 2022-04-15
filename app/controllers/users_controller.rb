class UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    user_id = params["id"]
    user = User.find_by(id: user_id)

    user.destroy
    render json: {message: "BOOM! CRASH! SLAM! Your movie has been destroyed!"}.as_json
  end

end
