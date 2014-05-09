class Project < ActiveRecord::Base

  # has_many :users
  has_many :pledges
  has_many :tiers

  belongs_to :owner, class_name: "User"
  accepts_nested_attributes_for :tiers

end
