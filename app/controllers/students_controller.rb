class StudentsController < ApplicationController

	def index
		@students = Student.all.reverse
	end

	def new
		@new_student = Student.new
	end

	def create
		@new_student = Student.create(student_params)
		@new_student.status = 0;
		if @new_student.save
			redirect_to student_path(@new_student.id)
		else
			render :new
		end
	end

	def show
		@student = Student.find params[:id]
	end

	def destroy
		@student = Student.find params[:id]
		@student.delete

		redirect_to students_path
	end

	private
	def student_params
		params.require(:student).permit(:name, :register_number, :status)
	end

end