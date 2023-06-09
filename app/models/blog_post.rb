class BlogPost < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :text, length: { minimum: 50 }
end
