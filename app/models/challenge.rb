class Challenge < ApplicationRecord
  belongs_to :user
  has_many :challenge_participations, dependent: :destroy
  has_many :challenge_completions, through: :challenge_participations, dependent: :destroy
  has_many :messages, dependent: :destroy


  validates :title, presence: true
  validates :description, length: { minimum: 10 }
  validates :category, inclusion: { in: ["sports", "mindfulness", "self-organisation", "studying", "nutrition", "others"]}
  validates :weekly_goal, inclusion: { in: 1..7 }
end
