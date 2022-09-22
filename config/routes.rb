Rails.application.routes.draw do
  namespace :profile do
    get 'profile/show'
  end
  root 'static_pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :admin do

    root "admin#index" # admin namespace root
  end

  # Customer dashboard
  namespace :profile do
    root "profile#show"
  end

end
