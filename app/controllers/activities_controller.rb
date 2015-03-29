class ActivitiesController < ApplicationController
  def new
    @activity = Activity.create(hash_id: new_hash, step: 0)
    redirect_to activity_teacher_path(activity_id: @activity.hash_id)
  end
  
  def show
    @activity = Activity.find(params[:id])
    if session[:teacher] == params[:id]
      redirect_to :teacher_page
    else
      redirect_to new_activity_student_path(activity_id: params[:id])
    end
  end

  def teacher_page
    render :teacher
  end

  def source
    @activity = Activity.find(params[:activity_id])
    output = {
      students: @activity.students 
    }
    render json: output
  end

  private
  def new_hash
    SecureRandom.hex[0..4]
  end
end
