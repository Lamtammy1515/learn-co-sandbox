class ReviewsController < ApplicationController
  
  before do 
    require_login
  end 

  # GET: /reviews
  get "/reviews" do
      @review = Review.all.reverse
      erb:"/reviews/index.html"
  end

  # GET: /reviews/new
  get "/reviews/new" do
      erb :"/reviews/new.html"
  end

  # POST: /reviews
  post "/reviews" do
    filtered_params = params.reject{|key, value| key == "image" && value.empty?}
    review = current_user.review.build(filtered_params)
    review.image = nil if review.image.empty? 
     if review.save
      redirect to '/reviews'
    else
      @error = "Data invalid. Please try again."
      redirect to '/reviews/new'
    end
  end

  # GET: /reviews/5
  get "/reviews/:id" do
     @review = Review.find_by(id: params[:id])
     if @review
       erb :"/reviews/show.html"
     else 
       redirect '/reviews'
     end 
  end

  # GET: /reviews/5/edit
  get "/reviews/:id/edit" do
    @review = Review.find(params[:id])
    erb :"/reviews/edit.html"
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
