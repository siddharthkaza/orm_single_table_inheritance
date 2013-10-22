class Employee < Person
  attr_accessible :name, :email, :dept
  belongs_to :boss, :class_name => "Employee" , :foreign_key => :reports_to
end
