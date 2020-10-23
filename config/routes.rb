Rails.application.routes.draw do
  get '/', :to => redirect('/index.html')
  get '/home', :to => redirect('/index.html')
  get '/about', :to => redirect('/about.html')
  get '/off-ice-sessions', :to => redirect('/off-ice-sessions.html')
  resource :events

  get '/on-ice', :to => 'events#on_ice'

  scope 'admin' do
    resources :events, as: 'admin_events'
  end
end