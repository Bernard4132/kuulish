class CreateBlogcomments < ActiveRecord::Migration[5.0]
  def change
    create_table :blogcomments do |t|
      t.text :body
      t.integer :bolg_id

      t.timestamps
    end
  end
end
