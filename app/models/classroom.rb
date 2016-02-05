class Classroom < ActiveRecord::Base
	validates_presence_of :entry_at, :student_id, :course_id, message: "Não pode ficar vazio"
	validates_uniqueness_of :student, scope: :course, message: "Está associação já foi feita"

	belongs_to :student
	belongs_to :course

end
