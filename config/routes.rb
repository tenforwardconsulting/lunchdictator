Lunchdictator::Application.routes.draw do
  devise_for :users
  
  resources :restaurants do
    get "unrated", on: :collection
  end
  resources :lunches

  root to: 'hunger#home'
end
