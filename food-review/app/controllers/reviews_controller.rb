class ReviewsController < ApplicationController
  
  before do 
    require_login
  end 


  get "/reviews" do
      @review = Review.all.reverse
      erb:"/reviews/index.html"
  end


  get "/reviews/new" do
      erb :"/reviews/new.html"
  end


  post "/reviews" do
    filtered_params = params.reject{|key, value| key == "image" && value.empty?}
    review = current_user.review.create(filtered_params)
     if review.save
      redirect to '/reviews'
    else
      redirect to '/reviews/new'
    end
  end


  get "/reviews/:id" do
     @review = Review.find_by(id: params[:id])
     if @review
       erb :"/reviews/show.html"
     else 
       redirect '/reviews'
     end 
  end


  get "/reviews/:id/edit" do
    @review = Review.find(params[:id])
    erb :"/reviews/edit.html"
  end


  patch "/reviews/:id" do
    @review = Review.find(params[:id])
     if !params["reviews"]["title"].empty? && !params["reviews"]["review"].empty? 
      @review.update(params["reviews"])
      redirect "/reviews/#{params[:id]}"
    else
      redirect to '/reviews/edit'
    end
  end

 
  delete "/reviews/:id" do
    review = Review.find(params[:id])
    review.destroy
    redirect "/reviews"
  end
  
end
