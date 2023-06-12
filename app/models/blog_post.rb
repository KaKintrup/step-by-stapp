class BlogPost < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :title, presence: true
  validates :text, length: { minimum: 50 }
end
