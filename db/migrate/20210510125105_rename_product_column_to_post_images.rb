class RenameProductColumnToPostImages < ActiveRecord::Migration[5.2]
  def change
    rename_column :post_images, :product_id, :post_product_id
  end
end

# rename_column :テーブル名, :変更前のカラム名, :変更後のカラム名