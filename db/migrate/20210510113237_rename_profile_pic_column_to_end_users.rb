class RenameProfilePicColumnToEndUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :end_users, :profile_pic, :profile_pic_id
  end
end
