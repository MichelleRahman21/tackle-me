# frozen_string_literal: true

Rails.application.routes.draw do
  # with this two resources we can skip the custom routes (shortcut)
  resources :items, except: %i[new edit]
  resources :wearers, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
