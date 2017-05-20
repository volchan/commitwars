Rails.application.routes.draw do
  root to: 'pages#home'
  get '/war' => 'pages#war'
end
