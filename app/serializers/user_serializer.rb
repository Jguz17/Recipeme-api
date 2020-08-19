class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :lists
  has_many :recipes, through: :lists
end
