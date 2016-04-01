Rottenpotatoes::Application.routes.draw do
  root :to => redirect('/movies')
  resources :movies
  match '/movies/:id/director', to: 'movies#show_director', :as => :director
  # map '/' to be a redirect to '/movies'
end
