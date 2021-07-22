class FightsController < ApplicationController
  before_action :set_fight, only: [:show, :update, :destroy]

  # GET /fights
  def index
    @fights = Fight.all

    render json: @fights
  end

  # GET /fights/1
  def show
    render json: @fight
  end

  # POST /fights
  def create
    @fight = Fight.new(fight_params)

    if @fight.save
      render json: @fight, status: :created, location: @fight
    else
      render json: @fight.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fights/1
  def update
    if @fight.update(fight_params)
      render json: @fight
    else
      render json: @fight.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fights/1
  def destroy
    @fight.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fight
      @fight = Fight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fight_params
      params.require(:fight).permit(:boxer_a_id, :boxer_b_id, :time_scheduled, :rounds, :round_time, :winner_id, :loser_id, :result, :gym_id)
    end
end
