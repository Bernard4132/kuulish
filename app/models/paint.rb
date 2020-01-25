class Paint < ApplicationRecord
	mount_uploader :homeimage, HomeimageUploader
	mount_uploader :siimage, SiimageUploader
	mount_uploader :suimage, SuimageUploader
end
