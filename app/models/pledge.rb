class Pledge < ActiveRecord::Base

  belongs_to :project
  belongs_to :tier
  belongs_to :backer, class_name: "User"

end
