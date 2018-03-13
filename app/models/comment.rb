class Comment < ApplicationRecord
  belongs_to :admin
  belongs_to :post

  validates :content, presence: true, length: {minimum: 5}

  after_create_commit {}
end
