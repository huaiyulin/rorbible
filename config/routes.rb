Rails.application.routes.draw do
  resources :events
  resources :nations
  resources :people
  root :to => "welcome#index"
  get "welcome/say_hello" => "welcome#say"
  get "welcome"           => "welcome#index"
  
end
