class CreateHanderusers < ActiveRecord::Migration[5.0]
  def change
    create_table :handerusers do |t|
      t.integer :user_id
      t.integer :hander_id

      t.timestamps
    end
  end
end
