class CartItem < ApplicationRecord
	def change
    create_table :cart_items do |t|
      t.integer "item_id",     null: false
      t.integer "member_id",   null: false
      t.integer "number",      null: false, default: "1"
      t.timestamps
    end
    add_index :cart_items, :id
  end
end
