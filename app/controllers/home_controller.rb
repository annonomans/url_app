class HomeController < ApplicationController

	def home
		
	end

	def create_url
		url = UrlBase.new(:url => params[:url])
		if url.validate_url(params[:url])
			url.save!
			render json: {code:400,status:"ok"}
		else
			render json: {code:404,status: "not_valid"}
		end

	end
end
