class User < ActiveRecord::Base

  has_many :project
  has_many :pledge

  validates presence: true, on: :create
  validates presence: true
end
