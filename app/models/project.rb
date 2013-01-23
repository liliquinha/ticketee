class Project < ActiveRecord::Base
  attr_accessible :name
  
  has_many :tickets, dependent: :delete_all
  has_many :permissions, :as => :thing
  
  validates :name, presence: true
  
  scope :readable_by, lambda {|user| joins(:permissions).where(:permissions => {:action => "view",
                                                                                :user_id => user.id})}
end
