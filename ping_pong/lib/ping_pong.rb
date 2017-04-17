class Fixnum
  define_method(:ping_pong) do
    array = []
    (1..self).each() do |number|
      if number % 15 === 0
        array.push("ping-pong")
      elsif number % 3 === 0
        array.push("ping")
      elsif number % 5 === 0
        array.push("pong")
      else
        array.push(number)
      end
    end
    array
  end
end
