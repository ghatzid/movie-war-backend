class Library < ApplicationRecord
  belongs_to :card
  belongs_to :deck
end
