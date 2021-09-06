class TaxonsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        taxons = Taxon.all
        render json: taxons
    end

    private

    def render_not_found_response
        render json: { error: "Record not found" }, status: :not_found
    end
end
