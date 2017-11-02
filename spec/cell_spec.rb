require 'cell'

describe Cell do
  subject(:cell) { described_class.new }

  it "initializes with a default value of '' "do
    expect(cell.value).to eq ""
  end

end
