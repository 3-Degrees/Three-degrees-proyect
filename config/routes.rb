Rails.application.routes.draw do
  resources :projects
  root 'welcome#index'

  get 'como_funciona' => 'welcome#about'

  devise_for :organizations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
