class Award < ActiveRecord::Base
  attr_accessible :name, :student_id, :year
  belongs_to :student
end
