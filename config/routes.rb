Dviz::Application.routes.draw do

  root 'youtube#index'
  get 'youtube' => 'youtube#index'
  get 'youtube/search' => 'youtube#search'

end
