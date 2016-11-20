describe 'Feature - extract day with minimum spread' do

  it '#min_spread returns the day with smallest spread between min/max temperature' do
    analyser = WeatherAnalyser.new('/spec/fixtures/two_days_weather.dat')
    
    expect(analyser.min_spread).to eq 2
  end

  it '#min_spread returns the day with smallest spread between min/max temperature' do
    analyser = WeatherAnalyser.new('/spec/fixtures/weather.dat')
    
    expect(analyser.min_spread).to eq 14
  end

end
