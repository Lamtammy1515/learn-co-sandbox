class ReviewsController < ApplicationController

  # GET: /reviews
  get "/reviews" do
    if logged_in?
    @review = Review.all.reverse
    erb:"/reviews/index.html"
  else 
    redirect 'login'
  end 
  end

  # GET: /reviews/new
  get "/reviews/new" do
    if logged_in?
        erb :"/reviews/new.html"
      else 
        redirect '/login'
      end 
  end

  # POST: /reviews
  post "/reviews" do
    filtered_params = params.reject{|key, value| key == "image" && value.empty?}
    review = current_user.review.build(filtered_params)
    review.image = nil if review.image.empty? 
     if !review.restaurant.empty? && !review.review.empty?
      review.save
      redirect to '/reviews'
    else
      @error = "Data invalid. Please try again."
      redirect to '/reviews/new'
    end
  end

  # GET: /reviews/5
  get "/reviews/:id" do
    if logged_in?
        @review = Review.find(params[:id])
        erb :"/reviews/show.html"
    else 
      redirect '/login'
    end 
  end

  # GET: /reviews/5/edit
  get "/reviews/:id/edit" do
    if logged_in?
    @review = Review.find(params[:id])
    erb :"/reviews/edit.html"
  else 
    redirect '/login'
  end 
  end

  # PATCH: /reviews/5
  patch "/reviews/:id" do
    @review = Review.find(params[:id])
     if !params["reviews"]["restaurant"].empty? && !params["reviews"]["review"].empty?
      @review.update(params["reviews"])
      redirect "/reviews/#{params[:id]}"
    else
      @error = "Data invalid. Please try again."
      redirect to '/reviews/edit'
    end
  end

  # DELETE: /reviews/5/delete
  delete "/reviews/:id" do
    review = Review.find(params[:id])
    review.destroy
    redirect "/reviews"
  end
end
