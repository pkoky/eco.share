class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.references :end_user, foreign_key: true
      t.references :post_product, foreign_key: true

      t.timestamps
    end
  end
end
