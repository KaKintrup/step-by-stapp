class ChallengeParticipationsController < ApplicationController

  def create
    @participation = ChallengeParticipation.new
    @participation.challenge_id = params[:challenge_id]
    @participation.user_id = current_user.id
    @participation.save
    redirect_to challenge_path(@participation.challenge_id)
  end

  def destroy
    @participation = ChallengeParticipation.find(params[:id])
    @participation.destroy
    redirect_to challenge_path, status: :see_other
  end
end
