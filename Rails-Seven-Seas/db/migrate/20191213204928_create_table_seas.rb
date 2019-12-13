class CreateTableSeas < ActiveRecord::Migration[5.1]
  def change
    create_table :seas do |t|
      t.text :name
      t.float :temperature
      t.text :bio
      t.text :image_url
      t.text :mood
      t.text :favorite_color
      t.text :scariest_creature
      t.boolean :has_mermaids
    end
  end
end
