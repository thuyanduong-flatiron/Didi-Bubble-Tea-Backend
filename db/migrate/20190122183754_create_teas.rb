class CreateTeas < ActiveRecord::Migration[5.2]
  def change
    create_table :teas do |t|
      t.string :name
      t.string :image_url
      t.string :description
      t.boolean :in_stock
      t.timestamps
    end
  end
end
