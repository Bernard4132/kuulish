class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :bodydescrip
      t.text :body
      t.string :blogimage
      t.integer :group_id
      t.integer :user_id

      t.timestamps
    end
  end
end
