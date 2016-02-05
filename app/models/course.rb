class Course < ActiveRecord::Base
	validates_presence_of :name, :description, message: "Não pode ficar vazio"
	
	has_many :classrooms
end
