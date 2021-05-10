class AddCulomnsToEndUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :end_users, :self_introduction, :text
    add_column :end_users, :profile_pic, :string
  end
end
