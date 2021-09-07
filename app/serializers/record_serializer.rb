class RecordSerializer < ActiveModel::Serializer
    attributes :id, :date_seen, :category, :notes
    belongs_to :user
    belongs_to :taxon
end
