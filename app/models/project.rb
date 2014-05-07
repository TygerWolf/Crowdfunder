class Project < ActiveRecord::Base

  # has_many :users
  has_many :pledges
  has_many :breakpoints

  belongs_to :owner, class_name: "User"

end
