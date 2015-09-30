Rails.application.routes.draw do
  resources :courses
  resources :teachers do
    resources :students
  end
  resources :students
  resources :schools

  root 'schools#index'
end
