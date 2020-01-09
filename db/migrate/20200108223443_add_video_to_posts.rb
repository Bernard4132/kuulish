class AddVideoToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :postvideo, :string
  end
end
