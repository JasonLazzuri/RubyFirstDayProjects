require("rspec")
require("queen_attack")

describe('Array#queen_attack?') do
  it('is true if vertical') do
    expect([[1,1],[1, 3]].queen_attack?()).to(eq(true))
  end
  it('is true if horizontal') do
    expect([[1,1],[3, 1]].queen_attack?()).to(eq(true))
  end
  it('is true if on a positive diagonal') do
    expect([[1,2],[3, 4]].queen_attack?()).to(eq(true))
  end
  it('is true if on a negative diagonal') do
    expect([[1,2],[2,1]].queen_attack?()).to(eq(true))
  end
  it('is false if the coordinates are not horizontally,   vertically, or diagonally in line with each other') do
    expect([[1,1],[2, 3]].queen_attack?()).to(eq(false))
  end
end
