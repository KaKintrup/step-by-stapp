class PagesController < ApplicationController
  def home
    @personal_participation = ChallengeParticipation.all.sample(3)
    @new_completion = ChallengeCompletion.new
  end
end
