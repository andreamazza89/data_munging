describe DayParser, '#extract_days' do

  context 'When the input string does not include any days' do
  
    it 'returns an empty array' do
      parser = described_class.new("no days here!")

      expect(parser.extract_days).to eq []
    end
  end


  context 'When the input string does include days' do
    
    it 'returns an array of parsed days (ex one)' do
      parser = described_class.new("   1  80    78    74          53.8       0.00 F       280  9.6 270  17  1.6  93 23 1004.5")

      days = parser.extract_days
  
      expect(days.first).to be_a Day
      expect(days.first.spread).to eq (2) 
      expect(days.first.day_of_the_month).to eq (1) 
    end

    it 'returns an array of parsed days (ex two)' do
      parser = described_class.new("   1  60    59    74          53.8       0.00 F       280  9.6 270  17  1.6  93 23 1004.5")

      days = parser.extract_days
  
      expect(days.first).to be_a Day
      expect(days.first.spread).to eq (1) 
      expect(days.first.day_of_the_month).to eq (1) 
    end

    it 'returns an array of parsed days (ex three)' do
      parser = described_class.new("   1  60    59    74          53.8       0.00 F       280  9.6 270  17  1.6  93 23 1004.5\n   2  60    58    74          53.8       0.00 F       280  9.6 270  17  1.6  93 23 1004.5")

      days = parser.extract_days
  
      expect(days.first).to be_a Day
      expect(days.first.spread).to eq (1)
      expect(days.first.day_of_the_month).to eq (1)

      expect(days.last).to be_a Day
      expect(days.last.spread).to eq (2)
      expect(days.last.day_of_the_month).to eq (2)
    end
  end
end
