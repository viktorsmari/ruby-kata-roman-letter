require 'roman'
describe "Roman number" do
  before do
    @r = Roman.new
  end

  it "should get simple numbers" do
    expect(Roman.new.rom_to_num('I')).to eq (1)
    expect(Roman.new.rom_to_num('V')).to eq (5)
    expect(Roman.new.rom_to_num('X')).to eq (10)
    expect(Roman.new.rom_to_num('L')).to eq (50)
    expect(Roman.new.rom_to_num('C')).to eq (100)
    expect(Roman.new.rom_to_num('D')).to eq (500)
    expect(Roman.new.rom_to_num('M')).to eq (1000)
  end
  it "should get multiple simple legal letter ordering" do
    expect(Roman.new.rom_to_num('VIII')).to eq (8)
    expect(Roman.new.rom_to_num('MIII')).to eq (1003)
  end

  it "should be able to withdraw negative number" do
    #expect(Roman.new.rom_to_num('IV')).to eq (4)
  end
end
