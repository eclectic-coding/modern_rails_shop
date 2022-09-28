Rails.application.routes.draw do
  # namespace :profile do
  #   get 'profile/show'
  # end

  root 'static_pages#home'

  namespace :admin do

    root "admin#index" # admin namespace root
  end

  # Customer dashboard
  namespace :profile do
    get '/login', to: "login#show", as: "/login"
    root "profile#show"
  end

end
