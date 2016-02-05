class Student < ActiveRecord::Base
	validates_presence_of :name, :register_number, message: "Não pode ficar em branco"
	validates_numericality_of :register_number, message: "Apenas números"
end
