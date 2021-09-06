class Taxon < ApplicationRecord
    has_many :records
    has_many :users, through: :records

    class << self
        def taxon_from_api(result)
            self.find_or_create_by(
                species: result[0].name,
                common_name: result[0].preferred_common_name
            ) 
        end
    end
end
