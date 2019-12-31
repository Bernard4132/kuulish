class Group < ApplicationRecord
    has_many :memberships
    has_many :users, through: :memberships
    has_many :posts
    has_many :blogs
end
