defmodule Cards do
  def create_deck do
    ["Ace", "Two", "Three"]
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

