class ChallengeParticipationsController < ApplicationController
  def create
    @participation = ChallengeParticipation.new
    @participation.save
    raise
  end
end
