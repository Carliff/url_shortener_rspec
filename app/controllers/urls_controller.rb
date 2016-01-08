class UrlsController < ApplicationController
	before_action :set_url, only: [:show, :destroy, :update]

	def index
		@short_url = Url.new
	end

	def create
	
		@url = Url.new(url_params)

	    if @url.save
	    else
	      @errors = @url.errors.full_messages
	      render :new
	    end
	end


end
