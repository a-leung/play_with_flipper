Rails.application.routes.draw do

  mount Flipper::UI.app(Flipper) => '/flipper'

  get '/version', to: 'version#index'
end
