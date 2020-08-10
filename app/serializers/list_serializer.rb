class ListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :recipe_id, :recipe
  has_one :user
  has_one :recipe
end
