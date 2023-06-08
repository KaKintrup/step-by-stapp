class BlogPost < ApplicationRecord
  belongs_to :challenge

  validates :title, presence: true
  validates :text, length: { minimum: 50 }
end
