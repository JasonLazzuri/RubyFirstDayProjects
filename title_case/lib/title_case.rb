class String
  define_method(:title_case) do
    words = self.split()
    words.each() do |word|
      word.capitalize!()
    end
    words.join(" ")
  end
end
