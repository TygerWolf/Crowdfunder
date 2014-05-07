class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :pledges
  has_many :projects
  # has_many :backed_projects, through: :pledges, source: :projects

end
