class Post < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  has_many :comments, dependent: :destroy
end
