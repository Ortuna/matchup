class StaticController < ApplicationController
  def home 
  end

  def mock
    @step = (params[:step] && params[:step].to_i) || 1 
    if @step == 2
      @next = false
    else
      @next = true 
    end
    render "static_#{@step}"
  end
end
