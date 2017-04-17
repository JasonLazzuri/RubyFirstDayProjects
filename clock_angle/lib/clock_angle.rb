class Array
  define_method(:clock_angle) do
    hourAngle = self[0]*(360/12)
    minuteAngle = self[1]*(360/60)
    difference = (hourAngle-minuteAngle).abs
    if difference > 180
      difference = 360-difference
    end
  difference
  end
end
