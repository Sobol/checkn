Checkn::Application.routes.draw do
  root :to => "welcome#index"

  resources :static_pages, only: [] do
    collection do
      get 'company'
      get 'devices'
      get 'partners'
      get 'help'
    end
  end
end
