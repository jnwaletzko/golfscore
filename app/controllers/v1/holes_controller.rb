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
    @hole.update!(hole_params)
    json_response(@hole)
  end

  # DELETE /holes/1.json
  def destroy
    @hole.destroy
    json_response(@hole)
  end

  private def set_hole
    @hole = Hole.find(params[:id])
  end

  private def hole_params
    params.fetch(:hole).permit(
      :number,
      :par,
      :yardage,
      :handicap,
      :strokes,
      :number_of_putts,
      :green_in_regulation,
      :fairway_hit
    )
  end
end
