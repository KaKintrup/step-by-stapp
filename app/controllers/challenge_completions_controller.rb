class ChallengeCompletionsController < ApplicationController
  def create
    @completion = ChallengeCompletion.new
    @completion.save
    raise
  end
end
