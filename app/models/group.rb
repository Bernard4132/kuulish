class Group < ApplicationRecord
    has_many :memberships
    has_many :users, through: :memberships
    has_many :posts
    has_many :blogs
    mount_uploader :groupprofile, GroupprofileUploader
    mount_uploader :groupcoverimage, GroupcoverimageUploader
end
