class PagesController < ApplicationController
  def home
    @personal_participation = ChallengeParticipation.all.sample(5)
    @new_completion = ChallengeCompletion.new
  end
end
