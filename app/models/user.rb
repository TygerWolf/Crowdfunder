class User < ActiveRecord::Base

  has_many :projects
  has_many :pledges

  validates presence: true, on: :create
  validates presence: true

end
