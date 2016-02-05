class CoursesController < ApplicationController

	def index
		@courses = Course.all.reverse
	end

	def new
		@new_course = Course.new
	end

	def create
		@new_course = Course.create(course_params)
		@new_course.status = 0;
		if @new_course.save
			redirect_to course_path(@new_course.id)
		else
			render :new
		end
	end

	def show
		@course = Course.find params[:id]
	end

	private
	def course_params
		params.require(:course).permit(:name, :description, :status)
	end

end