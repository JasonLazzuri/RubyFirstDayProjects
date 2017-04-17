class String
  define_method(:leetspeak) do
    words = self.split(" ")
    words = words.map() do |word|
      letters = word.split("")
      letters = letters.map() do |letter|
        if letter == "e" or letter == "E"
          "3"
        elsif letter == "o" or letter == "O"
          "0"
        elsif letter == "I"
          "1"
        elsif word.index(letter) != 0
          if letter == "s"
            "z"
          elsif letter == "S"
            "Z"
          else
            letter
          end
        else
          letter
        end
      end
      letters.join()
    end
    words.join(" ")
  end
