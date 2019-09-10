class Api::V1::DecksController < ApplicationController
  def index
    decks = Deck.all
    render json: decks
  end

  def show
    deck = Deck.find(params[:id])
    render json: deck
  end 

  def destroy
    deck = Deck.find(params[:id])
    deck.delete
    render json: deck
  end
  
  def create
    deck = Deck.create(
      name: params[:name]
    )
   render json: deck 
  end
  
  def update
      deck = Deck.find(params[:id])
      deck.update(      
        name: params[:name])
    render json: deck  
  end

  # def add_card
  #   deck = Deck.find(params[:id])
  #   card = Card.find(params[:id])
  #   deck.cards.push(card)
  #   render json: add 
  # end
  
end

