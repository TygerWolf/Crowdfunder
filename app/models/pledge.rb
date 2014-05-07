class Pledge < ActiveRecord::Base

  belongs_to :project

  belongs_to :backer, class_name: "user"

  belongs_to :breakpoint
end
