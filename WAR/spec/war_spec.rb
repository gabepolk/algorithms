require 'rubygems'
require 'rspec'
require 'pry-debugger'
require_relative '../war.rb'

describe Card do
  describe "initialize" do
    it "has a rank, value, and suit" do
      ace = Card.new("A", 14, "Hearts")
      expect(ace.rank).to eq("A")
      expect(ace.value).to eq(14)
      expect(ace.suit).to eq("Hearts")
      expect(ace).to be_a(Card)
    end
  end
end

describe Deck do
  let(:card_deck) {Deck.new}

  describe "initialize" do
    it "is an array" do
      expect(card_deck).to be_a(Deck)
      expect(card_deck.deck).to be_a(Array)
    end
  end

  describe "#add_card" do
    it ""
  end

  describe "#shuffle" do
    it "sets the index of each card to a random number" do
      card_deck.create_52_card_deck
      before_shuffle = card_deck.deck
      after_shuffle = card_deck.shuffle

      expect(before_shuffle).not_to eq(after_shuffle)
    end
  end

  describe "#deal_card" do
    it "removes the top card from your deck and returns it" do
      card_deck.create_52_card_deck
      first_card = card_deck.deck.first
      card_deck.deal_card

      expect(card_deck.deck.first).not_to eq(first_card)
    end

    it "should cycle through to the original array" do
      card_deck.create_52_card_deck
      53.times {card_deck.deal_card}

      binding.pry
      expect(card_deck.deck.count).to eq(52)
    end
  end

  describe "#create_52_card_deck" do
    it "adds cards to a deck" do
      card_deck.create_52_card_deck

      expect(card_deck.deck.count).to eq(52)
    end
  end
end

describe Player do
  describe "initialize" do
  end
end

describe War do
  describe "initialize" do
  end

  describe "#play game" do
  end
end

describe WarAPI do
  describe "#initialize" do
  end

  describe ".play_turn method" do
  end
end
