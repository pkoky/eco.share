class PostProduct < ApplicationRecord
  belongs_to :end_user
  has_many :post_images, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  accepts_attachments_for :post_images, attachment: :image

  validates :productName, :message, presence: true

  # end_userが登録されていたらtrueを
  def bookmarked_by?(end_user)
    bookmarks.where(end_user_id: end_user).exists?
  end
end
