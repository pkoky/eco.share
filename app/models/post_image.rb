class PostImage < ApplicationRecord
  belongs_to :post_product
  attachment :image
  validates :image_id, presence: true
end
