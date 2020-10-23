Rails.application.routes.draw do
  get '/', :to => redirect('/index.html')
  get '/home', :to => redirect('/index.html')
  get '/about', :to => redirect('/about.html')
  get '/off-ice-sessions', :to => redirect('/off-ice-sessions.html')
  get '/on-ice', :to => 'events#on_ice'

  resources :events
end