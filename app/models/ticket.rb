class Ticket < ActiveRecord::Base

  attr_accessible :description, :title, :user

  belongs_to :project
  belongs_to :user #perform migration too
  
  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 10}
end
