class StudentsController < ApplicationController

	def index
		@students = Student.all.reverse
	end

	def new
		@new_student = Student.new
	end

	def create
		@new_student = Student.create(student_params)
		if @new_student.save
			redirect_to root_path
		else
			render :new
		end
	end

	private
	def student_params
		params.require(:student).permit(:name, :register_number, :status)
	end

end