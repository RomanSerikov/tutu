Rails.application.routes.draw do
  resources :trains
  resources :railway_stations do
    patch :update_position, on: :member
  end
  resources :routes
  resources :carriages

  resources :coupe_carriages,     :controller => "carriages", :type => "CoupeCarriage"
  resources :platscard_carriages, :controller => "carriages", :type => "PlatscardCarriage"
  resources :sv_carriages,        :controller => "carriages", :type => "SvCarriage"
  resources :chair_carriages,     :controller => "carriages", :type => "ChairCarriage"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
