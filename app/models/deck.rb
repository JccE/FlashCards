class Deck < ApplicationRecord
  belongs_to :round
  has_many :cards

  validates :name, presence: true
end
