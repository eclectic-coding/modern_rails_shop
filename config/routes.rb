Rails.application.routes.draw do
  root 'static_pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :admin do




    root "admin#index"
  end

end
