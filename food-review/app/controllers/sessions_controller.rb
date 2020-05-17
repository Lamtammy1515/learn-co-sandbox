class SessionsController < ApplicationController

  get '/login' do 
    erb:'users/login'
  end 
  
  post '/login' do 
     if params["name"].empty? || params["password"].empty?
        @error = "Invalid. Please input name and password."
      erb:'users/login'
    else 
      if user = User.find_by(name: params["name"], password: params["password"])
           session[:user_id] = user.id 
            redirect '/reviews'
          else 
            @error = "Account not found!"
            erb:'users/login'
          end 
        end 
      end 
   
   get '/logout' do 
     session.clear
     redirect '/'
   end 

end
