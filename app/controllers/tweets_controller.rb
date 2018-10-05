class TweetsController < ApplicationController

	before_action :move_to_index, except: :index

	def index
	  @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)
	end

	def new
	end

	def create
       Tweet.create(name: tweet_params[:name], image: tweet_params[:image], text: tweet_params[:text])
    end

    private
    def tweet_params
      params.permit(:name, :image, :text)
    end
    
end
