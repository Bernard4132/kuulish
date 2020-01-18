class Hander < ApplicationRecord
	resourcify
	has_many :handerusers
  	has_many :users, through: :handerusers
end
