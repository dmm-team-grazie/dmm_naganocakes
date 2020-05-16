class Item < ApplicationRecord
	def change
    create_table :items do |t|
      t.integer "genre_id",        null: false
      t.string "name",             null: false
      t.integer "non_taxed_price", null: false
      t.text "introduction",       null: false
      t.string "item_image_id",    null: false
      t.boolean "is_valid",        null: false, default: "TRUE"
      t.timestamps
    end
    add_index :items, :id
  end
end
