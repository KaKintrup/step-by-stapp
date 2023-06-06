class ChallengeParticipation < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  has_many :challenge_completions
end
