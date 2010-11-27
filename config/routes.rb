AwesomeHome::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  get 'about' => 'site#about'
  get 'tour' => 'site#tour'
  get 'pricing' => 'site#pricing'
  get 'contact' => 'inquiries#new'
  get 'signup' => 'signups#new'

  resources :signups, :only => [:new, :create]
  resources :inquiries, :only => [:new, :create]

  root :to => "site#index"

  # See how all your routes lay out with "rake routes"
  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
