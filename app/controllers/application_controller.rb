class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "../views/") }

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :home
  end

  # render the sign-up form view.
  get '/registrations/signup' do
    erb :'/registrations/signup'
  end

  # responsible for handling the POST request that is sent when a user hits 'submit' on the sign-up form
  post '/registrations' do

    redirect '/users/home'
  end

  # is responsible for rendering the login form
  get '/sessions/login' do
    erb :'sessions/login'
  end

  # This route is responsible for receiving the POST request that gets sent when a user hits 'submit' on the login form.
  post '/sessions' do

    redirect '/users/home'
  end

  # This route is responsible for logging the user out by clearing the session hash.
  get '/sessions/logout' do

    redirect '/'
  end

  # This route is responsible for rendering the user's homepage view.
  get '/users/home' do

    erb :'/users/home'
  end

end
