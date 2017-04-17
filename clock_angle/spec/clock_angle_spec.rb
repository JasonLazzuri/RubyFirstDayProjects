require("rspec")
require("clock_angle")

describe("Array#clock_angle") do
  it("if hour input is greater than minute input, gives angle between the two") do
    expect([6,15].clock_angle).to(eq(90))
  end
  it("if hour input is less than minute input, gives angle between the two") do
    expect([6,45].clock_angle).to(eq(90))
  end
  it("will measure the inner angle between the hands rather than the outer angle") do
    expect([11,10].clock_angle).to(eq(90))
  end
end
