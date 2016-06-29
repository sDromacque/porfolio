class Project < ActiveRecord::Base
  validates :title, :description, :link, presence: true
  validates :link, url: { message: 'Erreur dans url' }

  extend FriendlyId
  friendly_id :title, use: :slugged
end
