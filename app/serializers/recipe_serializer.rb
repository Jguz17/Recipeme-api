class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients, :source, :image
  has_many :lists
  has_many :users, through: :lists
end
