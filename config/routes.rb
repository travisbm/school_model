Rails.application.routes.draw do
  resources :courses
  resources :students
  resources :schools

  resources :teachers do
    resources :students
  end

  root 'schools#index'
end
