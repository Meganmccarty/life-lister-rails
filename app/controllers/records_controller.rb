class RecordsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        records = Record.all
        render json: records
    end

    def create
        record = Record.create!(record_params)
        render json: record, status: :created
    end

    def record_params
        params.permit(:species, :common_name, :image, :date)
    end

    private

    def render_not_found_response
        render json: { error: "Record not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end

end
