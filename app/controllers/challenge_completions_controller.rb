class ChallengeCompletionsController < ApplicationController
  before_action :authenticate_user!
  def create
    @completion = ChallengeCompletion.new
    @completion.save
    raise
  end
end
