defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck/0 returns a list of strings representing a deck of laying cards" do
    deck = Cards.create_deck
    assert deck == ["Ace of Spades", "Two of Spades", "Three of Spades",
                    "Ace of Clubs", "Two of Clubs", "Three of Clubs",
                    "Ace of Hearts", "Two of Hearts", "Three of Hearts",
                    "Ace of Diamond", "Two of Diamond", "Three of Diamond"]
    assert length(deck) == 12
  end

  test "shuffling a deck randomizes the order of the cards" do
    deck = Cards.create_deck
    shuffled_deck = Cards.shuffle(deck)
    refute deck == shuffled_deck
  end
end
