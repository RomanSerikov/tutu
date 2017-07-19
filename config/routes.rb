Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root "searches#new"
  
  namespace :admin do
    get "control", to: 'base#control'

    resources :railway_stations do
      patch :update_position,  on: :member
      patch :update_arrival,   on: :member
      patch :update_departure, on: :member
    end

    resources :trains do
      resources :carriages, shallow: true
    end

    resources :coupe_carriages,     :controller => "carriages", :type => "CoupeCarriage"
    resources :platscard_carriages, :controller => "carriages", :type => "PlatscardCarriage"
    resources :sv_carriages,        :controller => "carriages", :type => "SvCarriage"
    resources :chair_carriages,     :controller => "carriages", :type => "ChairCarriage"

    resources :routes
    resources :tickets, except: [:new, :create]
  end
  
  resources :tickets, except: [:edit, :update]
  resource  :search,  only:   [:new, :show, :create]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
