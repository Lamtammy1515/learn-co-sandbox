class UsersController < ApplicationController


  get '/' do 
    erb :index
  end 

  get "/signup" do
    erb :'users/signup'
  end

  # POST: /users
  post "/signup" do
    user = User.new(params)
    if user.name.empty? || user.password.empty? || user.email.empty?
      @error = "Name, Email, and Password cannot be blank."
      erb:'users/signup'
    elsif User.find_by(name: user.name)
      @error = "Account with that name already exists."
      erb:'users/signup'
    else 
      user.save
      session[:user_id] = user.id 
      redirect '/reviews'
    end 
  end

end