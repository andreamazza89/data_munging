describe WeatherAnalyser do

  it 'initialises by creating Day objects from the given data' do 
    analyser = described_class.new('../spec/fixtures/weather.dat')

    expect(analyser.days[0]).to be_a Day
  end

  it '' do 
    analyser = described_class.new('../spec/fixtures/weather.dat')

    expect(analyser.days[0]).to be_a Day
  end

end
