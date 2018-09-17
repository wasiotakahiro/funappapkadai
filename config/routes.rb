Rails.application.routes.draw do
  resources :contacts
  root to: 'reservations#new'
  devise_for :customers, controllers: {
  sessions:      'customers/sessions',
  passwords:     'customers/passwords',
  registrations: 'customers/registrations'
}

resources :customers do
    collection do
      post :confirm
    end
  end
  devise_for :admins
  resources :reservations do
    collection do
      get :mail
      post :confirm
    end
  end

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
