class Post < ActiveRecord::Base
  validates :title, :resume, :content, presence: true

  extend FriendlyId
  friendly_id :title, use: :slugged
end
