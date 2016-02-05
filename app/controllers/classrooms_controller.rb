class ClassroomsController < ApplicationController

	def index
		@classrooms = Classroom.all.reverse
		@courses = Course.all
		@students = Student.all
	end

	def new
		@new_class = Classroom.new
		
		@students = []
		Student.all.each do |student|
			@students << student.id
		end

		@courses =[]
		Course.all.each do |course|
			@courses << course.id
		end		
	end

	def create
		@new_class = Classroom.create(classroom_params)
		if @new_class.save
			redirect_to classrooms_path()
		else
			render :new
		end
	end

	private
	def classroom_params
		params.require(:classroom).permit(:entry_at, :student_id, :course_id)
	end

end