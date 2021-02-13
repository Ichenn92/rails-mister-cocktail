Rails.application.routes.draw do
  root to: 'cocktails#index'

  resources :cocktails, only: %i[index show create] do
    resources :doses, only: %i[create destroy]
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
