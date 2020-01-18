class Blog < ApplicationRecord
    belongs_to :user
    belongs_to :group
    mount_uploader :blogimage, BlogimageUploader
end
