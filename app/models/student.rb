class Student < ActiveRecord::Base
  attr_accessible :date_of_birth, :family_name, :given_name, :grade_point_average, :middle_name, :start_date
  has_many :awards
end
