Rails.application.routes.draw do
  resources :break_periods
  resources :work_periods
  resources :department_transfers
  resources :departments
  resources :employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
