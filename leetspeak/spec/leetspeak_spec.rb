require("rspec")
require ("leetspeak")

describe("String#leetspeak")do
  it("The letter e should be replaced with '3'.")do
    expect("elephant".leetspeak).to(eq("3l3phant"))
  end
  it("The letter o should be replaced with '0'.")do
    expect("boo boo".leetspeak).to(eq("b00 b00"))
  end
  it("The letter I should be replaced with '1'.")do
    expect("Initial".leetspeak).to(eq("1nitial"))
  end
  it("The letter 's' should be replaced with 'z'.")do
    expect("roses".leetspeak).to(eq("r0z3z"))
  end
  it("Does NOT replace s with z when it is the first letter of a word") do
    expect("Sassy".leetspeak).to(eq("Sazzy"))
  end
  it('replaces letters correctly in a string of words') do
    expect("I scream you scream we all scream for raspberry ice cream.".leetspeak).to(eq("1 scr3am y0u scr3am w3 all scr3am f0r razpb3rry ic3 cr3am."))
  end
end
