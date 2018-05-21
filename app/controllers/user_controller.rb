class UserController < Sinatra::Base

  get '/login' do
    if Helper.logged_in?
      redirect '/tweets'
    else
      erb :'/users/login'
    end
  end

  get '/signup' do
    if Helper.logged_in?
      redirect '/tweets'
    else
      erb :'/users/signup'
    end
  end

end
