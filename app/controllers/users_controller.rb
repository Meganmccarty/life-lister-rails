class UsersController < ApplicationController
    before_action :authorize, only: [:display]
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create
        user = User.create!(user_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
        end
    end

    def show
        user = User.find_by(username: params[:username])
        render json: user, include: ['records', 'records.taxon']
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def display
        user = User.find_by(id: session[:user_id])
        render json: user
    end

    private

    def user_params
        params.permit(:username, :password, :password_confirmation, :public_profile)
    end

    def authorize
        render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
