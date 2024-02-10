class Deck
    def initialize(cards)
        @cards = cards
    end
    def cards
        @cards
    end
    def count
        @cards.length
    end
    def cards_in_category(category)
        category_cards = @cards.select { |card| card.category == category }
        category_cards
      end
    end
