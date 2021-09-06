class RecordsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        records = Record.all
        render json: records
    end

    def create
        taxon_entered = params[:taxon]
        result = InaturalistApi.fetch(taxon_entered)
        taxon = Taxon.taxon_from_api(result)

        record = Record.new!(record_params)
        record.taxon_id = taxon.id
        record.save
        render json: record, status: :created
    end

    private

    def record_params
        params.permit(:date, :notes)
    end

    def render_not_found_response
        render json: { error: "Record not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end

end
