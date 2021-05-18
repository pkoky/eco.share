class PostImage < ApplicationRecord
  belongs_to :post_product
  attachment :image
end
