class Trainer < ApplicationRecord
  has_many :pokeballs, dependent: :destroy
  has_many :pokemons, through: :pokeballs
  has_one_attached :photo

  validates :name, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 0 }
end
