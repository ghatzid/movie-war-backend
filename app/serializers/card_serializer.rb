class CardSerializer < ActiveModel::Serializer
  attributes :tconst, :title, :year, :genre, :rating
end
