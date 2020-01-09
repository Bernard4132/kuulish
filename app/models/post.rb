class Post < ApplicationRecord
    belongs_to :user
    belongs_to :group
    has_many :postcomments
    mount_uploader :postimage, PostimageUploader
    mount_uploader :postvideo, PostvideoUploader
    markable_as :postlike
end
