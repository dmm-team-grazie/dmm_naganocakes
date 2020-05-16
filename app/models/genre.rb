class Genre < ApplicationRecord
	def change
    create_table :genres do |t|
      t.string "name",             null: false
      t.boolean "is_valid",        null: false, default: "TRUE"
      t.timestamps
    end
    add_index :genres, :id
  end
end
