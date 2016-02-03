class Api::ShotsController < ApplicationController
  before_action :set_shot, only: [:show, :update, :destroy]

  # GET /shots
  # GET /shots.json
  def index
    @shots = Shot.all

    render json: @shots
  end

  # GET /shots/1
  # GET /shots/1.json
  def show
    render json: @shot
  end

  # POST /shots
  # POST /shots.json
  def create
    @shot = Shot.new(shot_params)

    if @shot.save
      render json: @shot, status: :created, location: @shot
    else
      render json: @shot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shots/1
  # PATCH/PUT /shots/1.json
  def update
    @shot = Shot.find(params[:id])

    if @shot.update(shot_params)
      head :no_content
    else
      render json: @shot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shots/1
  # DELETE /shots/1.json
  def destroy
    @shot.destroy

    head :no_content
  end

  private

    def set_shot
      @shot = Shot.find(params[:id])
    end

    def shot_params
      params.require(:shot).permit(:source, :title, :description, :project_id, :user_id, :comments_id)
    end
end
