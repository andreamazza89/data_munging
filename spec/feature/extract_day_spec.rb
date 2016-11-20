describe 'Feature - extract day with minimum spread' do
  xit '#min_spread returns the day with smallest spread between min/max temperature' do
    analyser = WeatherAnalyser.new('../spec/fixtures/weather.dat')
    
    expect(analyser.min_spread).to eq '9'
  end
end
