Rails.application.routes.draw do
  root 'tops#index'

  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }
  devise_for :admins

  resources :customers do
    collection do
      post :confirm
    end
  end
  resources :reservations do
    collection do
      get :mail
      post :confirm
    end
  end
  resources :contacts

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
