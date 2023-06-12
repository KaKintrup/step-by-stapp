class ChallengeCompletionsController < ApplicationController
  before_action :authenticate_user!
  def create
    @completion = ChallengeCompletion.new
    @completion.challenge_participation_id = params[:challenge_participation_id]
    @completion.save
    redirect_to challenge_path(@completion.challenge_participation.challenge_id)
  end
end


#@participation = ChallengeParticipation.new
#@participation.challenge_id = params[:challenge_id]
#@participation.user_id = current_user.id
#@participation.save
#redirect_to challenge_path(@participation.challenge_id)
