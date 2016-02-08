Rails.application.routes.draw do
  namespace :api do
    resources :users, except: [:new, :edit]
    resources :shots, except: [:new, :edit]
    resources :projects, except: [:new, :edit]
    resources :comments, except: [:new, :edit]
  end
end
