class Api::V1::CardsController < ApplicationController
  def index
    cards = Card.all
    render json: cards
  end
  
  def random
    random_cards = Card.find(Card.pluck(:id).sample(params[:num].to_i))
    render json: random_cards
  end
  
  def show
    card = Card.find(params[:id])
    render json: card
  end 

  def destroy
    card = Card.find(params[:id])
    card.delete
    render json: card
  end
  
  def create
    card = Card.create(
      tconst: params[:tconst], 
      title: params[:title], 
      year: params[:year], 
      runtime: params[:runtime], 
      genre: params[:genre], 
      director: params[:director], 
      rating: params[:rating], 
      num_votes: params[:num_votes], 
      img_url: params[:img_url]
    )
   render json: card 
  end
  
  def update
      card = Card.find(params[:id])
      card.update(      
        tconst: params[:tconst], 
        title: params[:title], 
        year: params[:year], 
        runtime: params[:runtime], 
        genre: params[:genre], 
        director: params[:director], 
        rating: params[:rating], 
        num_votes: params[:num_votes], 
        img_url: params[:img_url])
    render json: card  
  end

 
  
end
