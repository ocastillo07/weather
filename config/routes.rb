Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
  	namespace :v1 do
      
      post :auth, to: "authentication#create"
	  	resources :locations do
	  		resources :recordings
	  	end
      
	  end
  end
end
