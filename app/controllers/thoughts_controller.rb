class ThoughtsController < ApplicationController
	def index
		@thought = Thought.order("RANDOM()").first
	end

	def new
		@thought = Thought.new
	end

	def create
		Thought.create(quote_params)
		redirect_to root_path
	end


  private

  def quote_params
    params.require(:thought).permit(:idea)
  end



end
