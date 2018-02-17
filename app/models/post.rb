class Post < ApplicationRecord
  mount_uploader :post_image, AvatarUploader

  has_many :comments, dependent: :destroy
end
