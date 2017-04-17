require("rspec")
require("title_case")

describe("String#title_case") do
  it ("capitalizes the first letter of a word") do
    expect(("eric").title_case()).to(eq("Eric"))
  end
  it ("capitalizes the first letter of each word") do
    expect(("eric is a person").title_case()).to(eq("Eric Is A Person"))
  end
end
