class ChallengeCompletionsController < ApplicationController
  before_action :authenticate_user!
  def create
    @completion = ChallengeCompletion.new
    @completion.challenge_participation_id = params[:challenge_participation_id]
    @completion.start_time = params[:start_time]
    @completion.save
    redirect_back_or_to root_path
  end

  def destroy
    @completion = ChallengeCompletion.find(params[:id])
    @completion.destroy
    redirect_back_or_to root_path
  end
end
