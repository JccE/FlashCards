class User < ApplicationRecord
  has_many :rounds
  has_many :decks, through: :rounds, source: :deck
  has_many :guesses, through: :decks, source: :guesses

  validates :username, { presence: true }
  validates :password_hash, { presence: true }

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(password_new)
    @password = BCrypt::Password.create(password_new)
    self.password_hash = @password
  end

  def authenticate(password_text)
    self.password == password_text
  end

end
