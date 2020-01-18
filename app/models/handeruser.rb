class Handeruser < ApplicationRecord
	belongs_to :user
	belongs_to :hander
end
