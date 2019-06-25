defmodule Cards do
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]
    # for every card value, I want to match it to every suit
    # need to create new list that contains combination of this

    cards = for value <- values do
      for suit <- suits do # for every element in suits, do this thing
        "#{value} of #{suit}"
      end
    end

    List.flatten(cards)
  end

  # number of arguments a function accepts is called arity e.g. shuffle/1 has an arity of 1
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  # checks if card is in the deck
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

end

