Y::Application.routes.draw do
  resources :decks do
    resources :cards, except: :index
  end
  # # root :to => 'decks#index'
  # get "/decks" => 'decks#index'
  # get "/decks/new" => 'decks#new'
  # get "/decks/:id" => 'decks#show', as: :deck
  # post "/decks" => "decks#create"
  # get "/decks/:id/edit" => "decks#edit"
  # put "/decks/:id" => "decks#update"  
  # delete "/decks/:id" => "decks#destroy"
end
