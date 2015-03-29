Rails.application.routes.draw do
  root to: 'static#mock'
  get 'mock/:step', to: 'static#mock', as: :mock  

#  resources :activities, except: [:delete, :index] do
#    get :teacher, to: 'activities#teacher_page'
#    get :source, to: 'activities#source'
#    resources :students, only: [:create, :new, :show]
#  end


  
end
