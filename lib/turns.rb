class Turns
    def initialize (guess, card)
        @guess = guess
        @card = card
    end
    def guess
        @guess
    end
    def card
        @card
    end
    def correct? 
        guess === @card.answer
    end
    def feedback
        correct? ? "Correct!" : "Incorrect."
    end
end