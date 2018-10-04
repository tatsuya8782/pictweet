class TweetsController < ApplicationController

	before_action :move_to_index, except: :index

	def index
	  @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)
	end

	def new
	end

	def create
       Tweet.create(tweet_params)
    end

    private
    def tweet_params
      params.permit(:name, :image, :text)
    end
    
end
