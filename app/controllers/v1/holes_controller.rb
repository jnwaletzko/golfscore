class V1::HolesController < ApplicationController
  before_action :set_hole, only: [:show, :update, :destroy]

  # GET /holes.json
  def index
    @holes = Hole.all
    json_response(@holes)
  end

  # GET /holes/1.json
  def show
    json_response(@hole)
  end

  # POST /holes.json
  def create
    @hole = Hole.create!(hole_params)
    json_response(@hole, :created)
  end

  # PATCH/PUT /holes/1.json
  def update
    @hole.update(hole_params)
    head :no_content
  end

  # DELETE /holes/1.json
  def destroy
    @hole.destroy
    head :no_content
  end

  private def set_hole
    @hole = Hole.find(params[:id])
  end

  private def hole_params
    params.fetch(:hole).permit(
      :number,
      :par,
      :yards,
      :handicap,
      :score,
      :number_of_putts,
      :green_in_regulation,
      :fairway_hit
    )
  end
end
