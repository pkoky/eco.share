class CreatePostProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :post_products do |t|
      t.integer :end_user_id, null:false
      t.string :name, null:false
      t.text :message, null:false
      t.string :how_to_get
      t.string :shop_name
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
