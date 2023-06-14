class ChallengeCompletionsController < ApplicationController
  before_action :authenticate_user!
  def create
    @completion = ChallengeCompletion.new
    @completion.challenge_participation_id = params[:challenge_participation_id]
    @completion.save
    redirect_to challenge_participations_path
  end

  def destroy
    @completion = ChallengeCompletion.find(params[:id])
    @completion.destroy
    redirect_to challenge_path, status: :see_other
  end
end
