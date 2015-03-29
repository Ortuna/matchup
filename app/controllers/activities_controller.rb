class ActivitiesController < ApplicationController
  def new
    @activity = Activity.create(hash_id: new_hash, step: 0)
    session[:teacher] = @activity.hash_id
    redirect_to activity_path(@activity)
  end
  
  def show
    @activity = Activity.find(params[:id])
    if session[:teacher] == params[:id]
      render :show_teacher
    else
      redirect_to new_activity_student_path(activity_id: params[:id])
    end
  end

  private
  def new_hash
    SecureRandom.hex[0..4]
  end
end
