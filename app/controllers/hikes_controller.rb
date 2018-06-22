class HikesController < ApplicationController
	def index
		@hikes = Hike.all
	end

	def new
		@hike = Hike.new
	end

	def create
		@hike = Hike.create(hike_params)
		redirect_to hike_path(@hike)
	end

	def show
		@hike = Hike.find(params[:id])
	end

	private

	def hike_params
		params.require(:hike).permit(:name, :date, :description)
	end

end
