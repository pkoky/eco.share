class PostProduct < ApplicationRecord
  belongs_to :end_user
  has_many :post_images, dependent: :destroy
  accepts_attachments_for :post_images, attachment: :image
end
