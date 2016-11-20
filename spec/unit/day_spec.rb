describe Day, focus: true do

  it '#spread returns the difference between min and max temp (ex one)' do
    day = described_class.new(min: 5, max: 10)
    
    expect(day.spread).to eq 5
  end

  it '#spread returns the difference between min and max temp (ex two)' do
    day = described_class.new(min: 5, max: 11)
    
    expect(day.spread).to eq 6
 end

end
