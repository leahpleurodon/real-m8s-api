# frozen_string_literal: true

class UserPetsController < ApplicationController
  before_action :set_user_pet, only: %i[show update destroy]

  def show
    render json: @user_pet
  end

  def create
    @user_pet = UserPet.new(user_pet_params)
    if @user_pet.save
      render json: @user_pet, status: :created, location: @user_pet
    else
      render json: @user_pet.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user_pet.update(user_pet_params)
      render json: @user_pet
    else
      render json: @user_pet.errors, status: :unprocessable_entity
    end
  end

  private

  def set_user_pet
    @user_pet = UserPet.find(params[:id])
  end

  def user_pet_params
    params.require(:user_pet).permit(
      :name, :species, :size, :people_friendly, :child_friendly, :pet_friendly, :profile_pic, :active, :bio, :user_id
    )
  end
  end
