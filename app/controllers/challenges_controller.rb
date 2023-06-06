class ChallengesController < ApplicationController

  def index
    @challenges = Challenge.all
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenge_params)
    if @challenge.save
      redirect_to challenges_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @challenge = Challenge.find(params[:id])
  end

  def update
    @challenge = Challenge.find(params[:id])
    if @challenge.update(challenge_params)
      redirect_to challenges_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @challenge = Challenge.find(params[:id])
  end

  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy
    redirect_to challenges_path, status: :see_other
  end

  private

  def challenge_params
    params.require(:challenge).permit([:title; :description, :category, :weekly_goal, :start_date, :end_date, :public])
  end


end
