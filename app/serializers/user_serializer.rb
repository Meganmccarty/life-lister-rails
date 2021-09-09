class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :public_profile
    has_many :records
end
