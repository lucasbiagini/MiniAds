class CreativesController < ApplicationController

	def create
		@ad = ad.find(params[:ad_id])
		@creative = @ad.creatives.create(creative_params)
		redirect_to ad_path(@ad)
	end

	private
		def creative_params
			params.require(:creatives).permit(:bid, :adtext)
		end
end
