class VehiclesController < ApplicationController
ActiveRecord::Base.include_root_in_json = false

  def index
    vehicles = Vehicle.all
    render json: vehicles.to_json
  end

  def show
    vehicle = Vehicle.find(params[:id])
    render json: vehicle.to_json
  end
end
