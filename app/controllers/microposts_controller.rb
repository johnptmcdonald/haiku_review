class MicropostsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]
	before_action :correct_user,   only: :destroy

	def create
		@micropost = current_user.microposts.build(micropost_params)



		if @micropost.save
			flash[:success] = "Post created"
			redirect_to search_path(micropost_params[:movie_ref])

		else
			@title = micropost_params[:title]
			@picture = micropost_params[:picture]
			@year = micropost_params[:year]
			@movie_ref = micropost_params[:movie_ref]

			@microposts = Micropost.where(movie_ref: micropost_params[:movie_ref])

			render 'searches/show'

		end
	end

	def destroy
		@micropost.destroy
		flash[:success] = "Post deleted"
		redirect_to request.referrer || root_url
		
	end

	private

		def micropost_params
			params.require(:micropost).permit(:content, :title, :picture, :year, :movie_ref)
		end

		def correct_user
			@micropost = current_user.microposts.find_by(id: params[:id])
			redirect_to root_url if @micropost.nil?
		end

end
