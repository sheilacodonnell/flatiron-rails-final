Rails.application.routes.draw do

  devise_for :users
  resources :projects do
    resources :tasks do
    	member do
    		patch :complete
    	end
    end
  end

  root "application#index"
end

# patch is the http request