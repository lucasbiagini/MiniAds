class AdsController < ApplicationController
	def index
		@ads = Ad.all
	end

	def show
		redirect_to ads_path
	end

	def new
		@ad = Ad.new
	end

	def edit
	end

	def create
		@ad = Ad.new(ad_params)

		if @ad.save
			redirect_to @ad
		else
			render 'new'
		end
	end

	def update
	end

	def destroy
	end

	private
		def ad_params
			params.require(:ad).permit(:budget)
		end
end
