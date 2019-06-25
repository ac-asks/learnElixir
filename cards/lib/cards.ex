# index notation to get something out of an array will NOT WORK
defmodule Cards do
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]
    # for every card value, I want to match it to every suit
    # need to create new list that contains combination of this

    for suit <- suits, value <- values do # you can have multiple comprehensions running at the same time - by passing both list to same comprehension - you get every possible combination of suits and values within this comprehension
      # for every element in suits, do this thing
        "#{value} of #{suit}"
    end
  end

  # number of arguments a function accepts is called arity e.g. shuffle/1 has an arity of 1
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  # checks if card is in the deck
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size) # this returns a tuple with {[deck:[], hand:[]}
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck) # invoke erlang code here - converts it into something that can be written into file system
    File.write(filename, binary)
  end


 # pattern matching is Elixir's replacement for variable assignment
 # assignment is the simplest form of pattern matching in Elixir i.e. deck = Cards.create_deck

# pattern matching:
#  e.g. {hand, rest_of_dec} = Cards.deal(deck, 5) WORKS
#  because the left and right hand side both have the same data structure and have equal number of elements in the tuple


end

