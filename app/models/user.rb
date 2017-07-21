class User < ApplicationRecord
  has_many :rounds
  has_many :guesses, through: :rounds
  has_many :decks, through: :rounds
  has_many :cards, through: :guesses

  validates :username, { presence: true }
  validates :password_hash, { presence: true }

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(password_new)
    @password = BCrypt::Password.create(password_new)
    self.password_hash = @password
  end

end
