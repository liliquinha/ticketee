class Ticket < ActiveRecord::Base

  attr_accessible :description, :title, :user, :asset, :assets_attributes

  belongs_to :project
  belongs_to :user #perform migration too
  has_many :assets
  accepts_nested_attributes_for :assets
  
  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 10}
  
end
