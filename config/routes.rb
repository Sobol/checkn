Checkn::Application.routes.draw do
  namespace :admin do
    resources :news, :only => [:index, :new, :show, :edit, :destroy, :create, :update]
    resources :static_pages, only: :index
    resources :codes, only: :index
    root :to => "news#index"
  end

  devise_for :users

  root :to => "welcome#index"

  resources :static_pages, only: [] do
    collection do
      get 'company'
      get 'devices'
      get 'partners'
      get 'help'
      get 'contact'
      get 'news'
      get 'localization'
      get 'cooperation'
      get 'technodiag'
      get 'imedia'
      get 'codes'
      get 'connectors'
      get 'cars'
    end
  end
end
