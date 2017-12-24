Rails.application.routes.draw do
  resources :polls, only: [:index, :show] do
    resources :votes, only: [:create]
  end
end
