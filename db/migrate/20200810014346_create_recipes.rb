class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredients, array: true, default: []
      t.string :source
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
