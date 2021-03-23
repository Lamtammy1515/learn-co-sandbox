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
    review = current_user.reviews.create(filtered_params)
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
    @review = Review.find_by_id(params[:id])
    redirect_if_not_allowed
      erb :'/reviews/edit.html'
  end


  patch "/reviews/:id" do
    @review = Review.find_by_id(params[:id])
    redirect_if_not_allowed
       
     if !params["reviews"]["title"].empty? && !params["reviews"]["review"].empty? 
      @review.update(params["reviews"])
      redirect "/reviews/#{params[:id]}"
    else
      redirect to '/reviews/edit'
    end
  end

 
  delete "/reviews/:id" do
    @review = Review.find_by_id(params[:id])
    redirect_if_not_allowed
      @review.delete
      redirect to "/reviews"
  end
  
  
  private 
  
  def redirect_if_not_allowed 
     if !logged_in? || !current_user.reviews.include?(@review)
         redirect to "/reviews/#{@review.id}"
       end 
  end 
  
end
