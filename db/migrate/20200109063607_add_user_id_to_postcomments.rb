class AddUserIdToPostcomments < ActiveRecord::Migration[5.0]
  def change
    add_column :postcomments, :user_id, :integer
  end
end
