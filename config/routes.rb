Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'rooms#places'
  resources :rooms, only: [:show, :update, :index]
  get '/places' => "rooms#places"
  get '/places/:a_place' => "rooms#a_place"
  #get '/ingegneria_informatica_via_ariosto_25' => "rooms#ingegneria_informatica_via_ariosto_25"
end
