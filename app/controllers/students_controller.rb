class StudentsController < ApplicationController
  def new
    @activity = Activity.find(params[:activity_id])
    @student  = Student.new(activity: @activity)
  end

  def show
    @student = Student.find(params[:id]) 
  end

  def create
    student = Student.new(student_params)
    student.activity_id = params[:activity_id]
    if student.save
      redirect_to activity_student_path(activity_id: params[:activity_id], id: student[:id])
    end
  end

  private
  def student_params
    params.require(:student).permit(:activity_id, :name)
  end
  
end
