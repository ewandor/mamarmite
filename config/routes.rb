Rails.application.routes.draw do

	resources :cooks, only: [:index, :show, :new, :create, :edit, :update] do
		resources :bookings, only: [:new, :create, :edit, :update]
	end

	patch  "bookings/:id", to: "bookings#accept", as: :confirm_booking
	put  "bookings/:id", to: "bookings#decline", as: :decline_booking

	mount Attachinary::Engine => "/attachinary"
	devise_for :users,
	controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
	resources :users, only: :show

	root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :users, only: :show
end
