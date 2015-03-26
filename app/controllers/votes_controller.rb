 class VotesController < ApplicationController
	def create
		if current_user && params[:poll] && params[:poll][:id] && params[:vote_option] && params[:vote_option][:id]
			@poll = Poll.find_by_id(params[:poll][:id])
			@option = @poll.vote_options.find_by_id(params[:vote_option][:id])
			if @option && @poll && !current_user.vote_for?(@poll)
				@option.votes.create({user_id: current_user.id}) + current_user.votes.create({vote_option_id: @option.id})
				current_user.vote_options.reset				
			else
				render js: 'alert(\'Your vote cannot be saved. Have you already voted?\');'
			end
		else
			render js: 'alert(\'Your vote cannot be saved.\');'
		end
	end
end
