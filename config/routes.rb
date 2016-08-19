Rails.application.routes.draw do

  get 'candies/index'

  get 'candies/show'

  get 'candies/new'

  get 'candies/edit'

  root to: 'candy_stores#index'

  resources :candy_stores do
    resources :candies
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
