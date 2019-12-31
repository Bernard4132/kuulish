class CreatePostcomments < ActiveRecord::Migration[5.0]
  def change
    create_table :postcomments do |t|
      t.text :body
      t.integer :post_id

      t.timestamps
    end
  end
end
