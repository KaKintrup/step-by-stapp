class PagesController < ApplicationController
  def home
    @personal_participation = ChallengeParticipation.all.first(3)
    @new_completion = ChallengeCompletion.new
    @all_participation = ChallengeParticipation.all
    @all_completions = ChallengeCompletion.all
  end
end
