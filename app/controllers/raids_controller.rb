# frozen_string_literal: true

class RaidsController < OpenReadController
  before_action :set_raid, only: %i[update destroy]

  # GET /raids
  def index
    @raids = Raid.all.order(time_remaining: :desc)

    render json: @raids
  end

  # GET /myraids
  def myraids
    @raids = Raid.where(user_id: current_user).order(time_remaining: :desc)

    render json: @raids
  end

  # GET /raids/1
  def show
    render json: Raid.find(params[:id])
  end

  # POST /raids
  def create
    @raid = current_user.raids.build(raid_params)

    if @raid.save
      render json: @raid, status: :created, location: @raid
    else
      render json: @raid.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /raids/1
  def update
    if @raid.update(raid_params)
      render json: @raid
    else
      render json: @raid.errors, status: :unprocessable_entity
    end
  end

  # DELETE /raids/1
  def destroy
    @raid.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_raid
    @raid = current_user.raids.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def raid_params
    params.require(:raid).permit(:boss_name, :time_remaining, :user_id)
  end
end
