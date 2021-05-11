class Relationship < ApplicationRecord
  # フォローする人=follower
  belongs_to :follower, class_name: "EndUser"
  # フォローされる人=followed
  belongs_to :followed, class_name: "EndUser"
end

=begin
belongs_to :関連先モデル
class_name: 関連先モデルを参照する際の名前指定
EndUserモデルに対してfollower,followedという名前で関連づけする
=end
