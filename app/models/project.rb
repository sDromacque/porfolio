class Project < ActiveRecord::Base
  validates :title, presence: {
      message: 'need titre'
  }
end
