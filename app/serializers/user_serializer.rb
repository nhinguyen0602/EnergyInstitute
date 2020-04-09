class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :gender
  belongs_to :role
end
