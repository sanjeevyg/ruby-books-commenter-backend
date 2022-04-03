Rails.application.routes.draw do
  resources :comments, include: [:book]
  resources :books, include: [:comments]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end