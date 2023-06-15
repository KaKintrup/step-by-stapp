class PagesController < ApplicationController
  def home
    @personal_participation = ChallengeParticipation.all.sample(3)
    @new_completion = ChallengeCompletion.new
    @all_participation = ChallengeParticipation.all
    @all_completions = ChallengeCompletion.all
  end
end
