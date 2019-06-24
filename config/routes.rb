# typed: strict
Rails.application.routes.draw do
  namespace: v1, defaults: { format: :json } do
    get 'things', to: 'things#index'
  end
  get "welcome/index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#index"
end
