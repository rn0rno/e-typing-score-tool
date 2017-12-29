# == Route Map
#
#           Prefix Verb   URI Pattern                      Controller#Action
#     competitions GET    /competitions(.:format)          competitions#index
#                  POST   /competitions(.:format)          competitions#create
#  new_competition GET    /competitions/new(.:format)      competitions#new
# edit_competition GET    /competitions/:id/edit(.:format) competitions#edit
#      competition GET    /competitions/:id(.:format)      competitions#show
#                  PATCH  /competitions/:id(.:format)      competitions#update
#                  PUT    /competitions/:id(.:format)      competitions#update
#                  DELETE /competitions/:id(.:format)      competitions#destroy
#           themes GET    /themes(.:format)                themes#index
#                  POST   /themes(.:format)                themes#create
#        new_theme GET    /themes/new(.:format)            themes#new
#       edit_theme GET    /themes/:id/edit(.:format)       themes#edit
#            theme GET    /themes/:id(.:format)            themes#show
#                  PATCH  /themes/:id(.:format)            themes#update
#                  PUT    /themes/:id(.:format)            themes#update
#                  DELETE /themes/:id(.:format)            themes#destroy
#           levels GET    /levels(.:format)                levels#index
#                  POST   /levels(.:format)                levels#create
#        new_level GET    /levels/new(.:format)            levels#new
#       edit_level GET    /levels/:id/edit(.:format)       levels#edit
#            level GET    /levels/:id(.:format)            levels#show
#                  PATCH  /levels/:id(.:format)            levels#update
#                  PUT    /levels/:id(.:format)            levels#update
#                  DELETE /levels/:id(.:format)            levels#destroy
#           scores GET    /scores(.:format)                scores#index
#                  POST   /scores(.:format)                scores#create
#        new_score GET    /scores/new(.:format)            scores#new
#       edit_score GET    /scores/:id/edit(.:format)       scores#edit
#            score GET    /scores/:id(.:format)            scores#show
#                  PATCH  /scores/:id(.:format)            scores#update
#                  PUT    /scores/:id(.:format)            scores#update
#                  DELETE /scores/:id(.:format)            scores#destroy
#

Rails.application.routes.draw do
  resources :competitions
  resources :themes
  resources :levels
  resources :scores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
