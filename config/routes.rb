Rails.application.routes.draw do


  get 'answer', to: 'questions#answer'

  root to: 'questions#ask'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
