AwesomeHome::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  get 'about' => 'site#about'
  #  get 'tour' => 'site#tour'
  get 'pricing' => 'site#pricing'
  get 'contact' => 'inquiries#new'
  get 'signup' => 'signups#new'

  get 'signup_confirmed' => 'site#signup_confirmed'
  get 'inquiry_confirmed' => 'site#inquiry_confirmed'

  get 'offers/trial1' => 'offers#trial1'
  get 'offers/trial2' => 'offers#trial2'
  get 'offers/trial3' => 'offers#trial3'
  get 'offers/trial4' => 'offers#trial4'
  get 'offers/trial5' => 'offers#trial5'

  resources :signups, :only => [:new, :create]
  resources :inquiries, :only => [:new, :create]

  root :to => "site#index"

  # If all else fails, render a 404.
  get '*path' => 'site#not_found'

  # See how all your routes lay out with "rake routes"
  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
