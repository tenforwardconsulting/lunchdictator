Lunchdictator::Application.routes.draw do
  devise_for :users
  
  resources :restaurants do
    get "unrated", on: :collection
  end
  resources :lunches

  get "/go_to_lunch" => "hunger#go_to_lunch"

  get "/friends" => "users#friends"

  root to: 'hunger#home'
end
