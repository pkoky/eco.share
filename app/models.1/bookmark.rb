class Bookmark < ApplicationRecord
  belongs_to :end_user
  belongs_to :post_product
  validates :end_user_id, uniqueness: { scope: :post_product_id }
end
