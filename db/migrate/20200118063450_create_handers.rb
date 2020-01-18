class CreateHanders < ActiveRecord::Migration[5.0]
  def change
    create_table :handers do |t|
      t.string :name

      t.timestamps
    end
  end
end
