class MateProfilesController < ApplicationController
  before_action :set_mate_profile, only: [:show, :update, :destroy]

  def show
    render json: @mate_profile
  end

  def create
    @mate_profile = MateProfile.new(mate_profile_params)

    if @mate_profile.save
      render json: @mate_profile, status: :created, location: @mate_profile
    else
      render json: @mate_profile.errors, status: :unprocessable_entity
    end
  end

  def update
    if @mate_profile.update(mate_profile_params)
      render json: @mate_profile
    else
      render json: @mate_profile.errors, status: :unprocessable_entity
    end
  end

  private
  def set_mate_profile
    @mate_profile = MateProfile.find(params[:id])
  end

  def mate_profile_params
    params.require(:mate_profile).permit(
        :marital_status, :job, :user_id, :is_smoker, :faith, :personality
    )
  end
end
  