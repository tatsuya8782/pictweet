Rails.application.routes.draw do
  devise_for :users
  get 'tweets' 		=> 'tweets#index'
  get 'tweets/new'  =>  'tweets#new'
  post 'tweets'     =>  'tweets#create'
  delete  'tweets/:id'  => 'tweets#destroy'
  get  'users/:id'   =>  'users#show' 
end