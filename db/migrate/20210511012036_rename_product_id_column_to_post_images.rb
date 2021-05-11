class RenameProductIdColumnToPostImages < ActiveRecord::Migration[5.2]
  def change
    rename_column :post_images, :product_id, :post_product_id
  end
end
