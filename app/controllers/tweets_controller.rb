class TweetsController < ApplicationController

	def index
	  @tweet = Tweet.find(3)
	end

end
