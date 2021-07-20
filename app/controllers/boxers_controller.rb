class BoxersController < ApplicationController
  before_action :set_boxer, only: [:show, :update, :destroy]

  # GET /boxers
  def index
    @boxers = Boxer.all

    render json: @boxers
  end

  # GET /boxers/1
  def show
    render json: @boxer
  end

  # POST /boxers
  def create
    @boxer = Boxer.new(boxer_params)

    if @boxer.save
      render json: @boxer, status: :created, location: @boxer
    else
      render json: @boxer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /boxers/1
  def update
    if @boxer.update(boxer_params)
      render json: @boxer
    else
      render json: @boxer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /boxers/1
  def destroy
    @boxer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boxer
      @boxer = Boxer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boxer_params
      params.require(:boxer).permit(:boxer_id, :first_name, :last_name, :height, :weight, :reach, :stance, :gym_id)
    end
end
