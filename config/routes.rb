Checkn::Application.routes.draw do
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
