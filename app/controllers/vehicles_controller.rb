class VehiclesController < ApplicationController

  def index
    vehicles = Vehicle.all
    ActiveRecord::Base.include_root_in_json = true
    render json: vehicles.to_json
  end

  def show
    vehicle = Vehicle.find(params[:id])
    ActiveRecord::Base.include_root_in_json = false
    render json: vehicle.to_json
  end
end
