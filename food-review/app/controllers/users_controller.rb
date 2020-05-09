class UsersController < ApplicationController


  get '/' do 
    erb :welcome
  end 

  get "/signup" do
    erb :'users/signup'
  end

  # POST: /users
  post "/signup" do
    user = User.new(params)
    if user.save
      session[:user_id] = user.id 
      redirect '/reviews'
    else 
      @error = "Invalid Credentials."
      erb:'/users/signup'
    end 
  end


end