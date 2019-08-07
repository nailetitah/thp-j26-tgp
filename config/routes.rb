Rails.application.routes.draw do
  # Pages statiques
  root 'pages#home'
  get 'team' => 'pages#team'
  get 'contact' => 'pages#contact'
  # Pages dynamiques
  resources :welcome, controller: 'welcome'
  resources :gossips, controller: 'gossips'
  resources :users, controller: 'users'
  resources :comments, controller: 'comments'

end
