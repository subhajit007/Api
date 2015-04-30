Rails.application.routes.draw do
    namespace :api do
      get '/smoothies/search' => 'smoothies#search'
    resources :smoothies
  end

  end

