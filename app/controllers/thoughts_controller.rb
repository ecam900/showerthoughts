class ThoughtsController < ApplicationController
	def index
		@thought = Thought.last
	end
end
