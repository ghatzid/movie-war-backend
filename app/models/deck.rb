class Deck < ApplicationRecord
  has_many :libraries
  has_many :cards, through: :libraries
end
