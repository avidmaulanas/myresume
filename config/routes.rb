Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'landing#index'
  get 'contact', to: 'greeting#index'
  post 'contact/send', to: 'greeting#do_send'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  resources :playgrounds, only: [:index] do
    collection do
      get :instagram_caption_maker
    end
  end
end
