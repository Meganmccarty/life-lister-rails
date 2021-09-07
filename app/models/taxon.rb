class Taxon < ApplicationRecord
    has_many :records
    has_many :users, through: :records

    class << self
        def taxon_from_api(result)
            self.find_or_create_by(
                species: result['results'].first['name'],
                common_name: result['results'].first['preferred_common_name'],
                image: result['results'].first['default_photo']['medium_url']
            ) 
        end
    end
end
