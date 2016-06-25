class Project < ActiveRecord::Base
  validates :title, :description, :link, presence: true
  ActiveValidators.activate(:all)

end
