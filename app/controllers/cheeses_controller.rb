class CheesesController < ApplicationController
  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # Find a cheese using n ID from URL
		cheese = Cheese.find(params[:id])
    # Send a JSON response using cheese object
		render json: cheese
  end
end
