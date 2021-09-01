class RecordsController < ApplicationController

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

end
