class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients, :source, :image
  belongs_to :user
end
