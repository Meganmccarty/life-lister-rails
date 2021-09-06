class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create
        user = User.create!(user_params)
        if user.valid?
            render json: user, status: :created
        end
    end

    private

    def user_params
        params.permit(:username, :password, :password_confirmation)
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.users.errors.full_messages }, status: :unprocessable_entity
    end

end
