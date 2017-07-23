class Card < ApplicationRecord
  belongs_to :deck
  # belongs_to :round, through: :deck
  # belongs_to :user, through: :round

  has_many :guesses

  validates :question, presence: true
  validates :answer, presence: true
  validates :deck_id, presence: true

end
