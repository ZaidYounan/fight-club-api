class GymsController < ApplicationController
  before_action :set_gym, only: [:show, :update, :destroy]

  # GET /gyms
  def index
    @gyms = Gym.all

    render json: @gyms
  end

  # GET /gyms/1
  def show
    render json: @gym
  end

  # POST /gyms
  def create
    @gym = Gym.new(gym_params)

    if @gym.save
      render json: @gym, status: :created, location: @gym
    else
      render json: @gym.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gyms/1
  def update
    if @gym.update(gym_params)
      render json: @gym
    else
      render json: @gym.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gyms/1
  def destroy
    @gym.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gym
      @gym = Gym.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gym_params
      params.require(:gym).permit(:name, :address)
    end
end
