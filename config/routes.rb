Rails.application.routes.draw do
  resources :feeds do
    member do
      resources :entries, only: [:index, :show]
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'feeds#index'
end
