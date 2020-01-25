class CreatePaints < ActiveRecord::Migration[5.0]
  def change
    create_table :paints do |t|
      t.text :hometitle
      t.text :homedescription
      t.string :sutitle
      t.text :sudescription
      t.string :sitext
      t.text :sidescription
      t.string :homeimage
      t.string :siimage
      t.string :suimage

      t.timestamps
    end
  end
end
