class CreatePostProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :post_products do |t|
      t.integer :end_user_id
      t.string :productName
      t.text :message
      t.string :howToGet
      t.string :shopName
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
