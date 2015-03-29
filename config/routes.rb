Rails.application.routes.draw do
  root to: 'static#home'

  resources :activities, except: [:delete, :index] do
    resources :students, only: [:create, :new, :show]
  end

end
