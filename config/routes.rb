Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'store#index'

  get '/switch_role', to: 'store#switch_role'

  resources :apps,     except: %i[index]
  resources :games,    except: %i[index]
  resources :downloads, only: %i[show]
end
