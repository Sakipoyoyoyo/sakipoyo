Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get 'youkos/dog' => 'youkos#dog'
  get 'youkos/cat' => 'youkos#cat'
  get 'youkos/hadakadebanezumi' => 'youkos#hadakadebanezumi'
 
 
  resources :youkos
  root 'youkos#index'
end
