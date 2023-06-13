class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :challenges, dependent: :destroy
  has_many :challenge_participations, dependent: :destroy
  has_many :blog_posts, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_one_attached :photo

end
