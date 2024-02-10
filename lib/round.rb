class Round
    attr_reader :deck, 
                :turns

    def initialize (deck)
        @deck = deck
        @turns = []
        @current_card_index = 0
    end
    def current_card
        @deck.cards[@current_card_index]
    end
    def take_turn(guess)
        new_turn = Turns.new(guess, current_card)
        @turns << new_turn
        @current_card_index += 1
        new_turn
    end
    def number_correct
        @turns.count { |turn| turn.correct? }
    end
    def number_correct_by_category
        correct_by_category = @turns.count { |turn| turn.correct? && turn.card.category == category}
        correct_by_category
    end 
    def percent_correct
        total_turns = @turns.length
        correct_turns = number_correct
        (correct_turns / total_turns) * 100
    end
    def percent_correct_bu_category(category)
        total_turns_in_category = @turns.count{ |turn| turn.card.category == category}
        correct_turns_in_category =  number_correct_by_category(category)
        (correct_turns_in_category / total_turns_in_category) * 100
    end
end
