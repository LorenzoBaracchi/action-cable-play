Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  resources :rooms do
    resources :messages
  end

  get 'login' => 'application#login_form'
  post 'login' => 'application#login'

  put 'say_hi' => 'users#say_hi'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
