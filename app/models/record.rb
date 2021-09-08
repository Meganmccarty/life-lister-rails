class Record < ApplicationRecord
    validates :taxon_id, uniqueness: { scope: :user_id, message: 'already exists in your life list!' }
    belongs_to :user
    belongs_to :taxon
end
