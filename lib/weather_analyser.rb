require 'day'

class WeatherAnalyser

  def initialize(path_to_data)
    data = File.read(Dir.pwd + path_to_data)
    @day_parser = DayParser.new(data)
  end 

  def min_spread
    day_with_min_spread = @day_parser.extract_days.min_by { |day| day.spread }
    day_with_min_spread.spread
  end

end
