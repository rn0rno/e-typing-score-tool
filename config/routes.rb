# == Route Map
#
# ruby/2.5.0 isn't supported by this pry-doc version
#     Prefix Verb   URI Pattern                Controller#Action
#     scores GET    /scores(.:format)          scores#index
#            POST   /scores(.:format)          scores#create
#  new_score GET    /scores/new(.:format)      scores#new
# edit_score GET    /scores/:id/edit(.:format) scores#edit
#      score GET    /scores/:id(.:format)      scores#show
#            PATCH  /scores/:id(.:format)      scores#update
#            PUT    /scores/:id(.:format)      scores#update
#            DELETE /scores/:id(.:format)      scores#destroy
# 

Rails.application.routes.draw do
  resources :scores
end
