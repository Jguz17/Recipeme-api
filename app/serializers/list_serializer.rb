class ListSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :recipe
  has_one :user
  has_one :recipe
end
