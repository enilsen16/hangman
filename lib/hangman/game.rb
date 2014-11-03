module Hangman
  class Game


    def initialize
      @conn = Faraday.new(:url => '') do |faraday|
        faraday.request :url_encoded
        faraday.adapter Faraday.default_adapter
      end
    end


    def play_game
      puts "Lets free some humans..."
      set_variables

      @letters.each do |x|
        break if @health == "FREE" || @health == "DEAD"
        puts "Human #{@token} has #{@remaining_guesses} guesses left"
        puts "The current string is #{@state} and the guess is: #{x}"
        response = @conn.get "&token=#{@token}&guess=#{x}"
        @human = response.body
        parse_json(@human)
      end
      puts "The answer was #{@state} and the human is #{@health}"
    end

    private

    def set_variables
      get

      parse_json(@human)

      @letters = %W(I E T N S O A H F R L U M G C P D Y B V Z X W K Q J)
    end

    def get
      response = @conn.get ''
      @human = response.body
    end

    def parse_json(human)
      data = JSON.parse(human)
      @health = data["status"]
      @token = data["token"]
      @remaining_guesses = data["remaining_guesses"]
      @state = data["state"]
    end
  end
end
