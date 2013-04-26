class CardsController < ApplicationController
	def show
		@deck = find_deck
		@card = find_card(@deck) #@deck.cards.find(params[:id])
	end

	def new
		@deck = find_deck
		@card = @deck.cards.new
	end

	def create
		@deck = find_deck
		@card = @deck.cards.new(params[:card])

		@card.save
		redirect_to @deck
	end

	def edit
		@deck = find_deck
		@card = find_card(@deck) #@deck.cards.find(params[:id])
	end

	def update
		@deck = find_deck
		@card = find_card(@deck) # @deck.cards.find(params[:id])
		@card.update_attributes(params[:card])
		redirect_to @deck
	end

	def destroy
		@deck = find_deck
		@card = find_card(@deck)
		@card.destroy
		redirect_to @deck
	end

	private #everything after private is not confused to be an action method, and it also remains private to this class and not visible to anything outside of it

	def find_deck
		Deck.find(params[:deck_id])
	end

	def find_card deck
		deck.cards.find(params[:id])
	end

end