class AddUserInfFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :gender, :string
    add_column :users, :hobsintrst, :string
    add_column :users, :country, :string
    add_column :users, :profileimage, :string
    add_column :users, :agerangekids, :string
    add_column :users, :numofchildren, :integer
    add_column :users, :industryworkin, :string
    add_column :users, :wdtwtoknow, :string
    add_column :users, :parentalfears, :string
  end
end
