Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :quotes do 
    resources :line_item_dates, except: [:index, :show]
  end
  # Defines the root path route ("/")
  root to: "pages#home"
end
