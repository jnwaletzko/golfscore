class V1::HolesController < ApplicationController
  before_action :set_hole, only: [:show, :update, :destroy]

  # GET /holes.json
  def index
    @holes = Hole.all
  end

  # GET /holes/1.json
  def show
  end

  # POST /holes.json
  def create
    @hole = Hole.create!(hole_params)
  end

  # PATCH/PUT /holes/1.json
  def update
    @hole.update(hole_params)
  end

  # DELETE /holes/1.json
  def destroy
    @hole.destroy
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
