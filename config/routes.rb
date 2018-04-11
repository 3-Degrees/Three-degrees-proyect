Rails.application.routes.draw do
  get 'solicitud_registrada' => 'request#save'
  post 'request/save'

  resources :projects
  root 'welcome#index'

  get 'como_funciona' => 'welcome#about'
  get 'organizaciones' => 'welcome#organizations'
  get 'perfil_organizacion/:id' => 'welcome#profile', as: 'perfil_organizacion'

  devise_for :organizations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
