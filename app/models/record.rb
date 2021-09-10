class Record < ApplicationRecord
    validates :taxon_id, uniqueness: { scope: :user_id, message: 'already exists in your life list!' }
    validates :category, inclusion: { 
        in: ['Amphibian', 'Bird', 'Butterfly', 'Fish', 'Insect', 'Mammal', 'Plant', 'Reptile', 'Other'],
        message: 'is not a valid category'
    }
    belongs_to :user
    belongs_to :taxon
end
