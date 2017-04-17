class String
  define_method(:leetspeak) do
    words = self.split(" ")
    words = words.map() do |word|
      letters = word.split("")
      letters = letters.map() do |letter|
        if letter == "s" or letter == "S"
          if word.index(letter) != 0
            if letter == "s"
              "z"
            else letter == "S"
              "Z"
            end
          else
            letter
          end
        elsif letter == "e" or letter == "E"
          "3"
        elsif letter == "o" or letter == "O"
          "0"
        elsif letter == "I"
          "1"
        else
          letter
        end
      end
      letters.join()
    end
    words.join(" ")
  end
end
