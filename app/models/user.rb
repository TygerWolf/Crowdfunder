class User < ActiveRecord::Base

  has_many :projects

  validates presence: true, on: :create
  validates presence: true

end
