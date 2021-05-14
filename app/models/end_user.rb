class EndUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_pic
  has_many :post_products, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  # フォローする人=follower
  # end_userとフォローする人を結びつける
  has_many :follower, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  # フォローされる人=followed
  # end_userとフォローされる人を結びつける
  has_many :followed, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
  # アソシエーションによって参照するカラムをforeign_keyとして指定している
  # Relationshipモデルに対して、follower_id,followed_idを見てfollower,followedという名前でアソシエーションをしている

  has_many :following_end_user, through: :follower, source: :followed
  has_many :follower_end_user, through: :followed, source: :follower
  # through: :経由するモデル名を指定する
  # source: :関連先モデル名を指定する




  # ユーザーをフォローする
  def follow(end_user_id)
    follower.create(followed_id: end_user_id)
  end
  # ユーザーのフォローを外す
  def unfollow(end_user_id)
    follower.find_by(followed_id: end_user_id).destroy
  end
  # フォローしていればtrueを返す
  def following?(end_user)
    following_end_user.include?(end_user)
  end

end
