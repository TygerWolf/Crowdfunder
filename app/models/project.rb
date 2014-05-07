class Project < ActiveRecord::Base

  # has_many :users
  has_many :pledge
  has_many :breakpoint

  belongs_to :owner, class_name: "user"

end
