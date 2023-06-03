class StreamersController < ApplicationController
  before_action :set_streamer, only: %i[ show update destroy ]

  # GET /streamers
  def index
    @streamers = Streamer.all

    render json: @streamers
  end

  # GET /streamers/1
  def show
    render json: @streamer
  end

  # POST /streamers
  def create
    @streamer = Streamer.new(streamer_params)

    if @streamer.save
      render json: @streamer, status: :created, location: @streamer
    else
      render json: @streamer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /streamers/1
  def update
    if @streamer.update(streamer_params)
      render json: @streamer
    else
      render json: @streamer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /streamers/1
  def destroy
    @streamer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_streamer
      @streamer = Streamer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def streamer_params
      params.require(:streamer).permit(:username)
    end
end
