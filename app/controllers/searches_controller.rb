class SearchesController < ApplicationController

	def index 
		if params['movie'] != nil
			input = params['movie'].split(/ /).join('+').to_sym 
		end

		url = HTTParty.get"http://api.rottentomatoes.com/api/public/v1.0/movies.json?q=#{input}&page_limit=25&page=1&apikey=" + ENV["ROTTEN_TOMATOES_API_KEY"]

		@movie = JSON.parse(url.body)

		

	end

	def show
			@title = params[:title] ? params[:title] : Micropost.where(movie_ref: params[:id]).first.title 
			@picture = params[:picture] ? params[:picture] : Micropost.where(movie_ref: params[:id]).first.picture 
			@year = params[:year] ? params[:year] : Micropost.where(movie_ref: params[:id]).first.year 
			@movie_ref = params[:id]


	  		@micropost = current_user.microposts.build if logged_in?
	  		
	  		@microposts = Micropost.where(movie_ref: params[:id]).paginate(page: params[:page], :per_page => 10)



    end



end
