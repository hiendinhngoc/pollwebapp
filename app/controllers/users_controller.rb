class UsersController < ApplicationController
	# encoding: utf-8
	def show
		@user = User.includes(:vote_options).find_by_id(params[:id])
	end
end
