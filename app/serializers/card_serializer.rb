class CardSerializer < ActiveModel::Serializer
  attributes :tconst, :title, :year, :genre, :rating, :img_url
end
