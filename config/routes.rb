Rails.application.routes.draw do
  get 'home/front'

  root to:'home#front'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
