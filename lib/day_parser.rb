class DayParser

  def initialize(unparsed_information)
    @lines_of_information = unparsed_information.split("\n")
  end

  def extract_days
    days = []

    @lines_of_information.each do |line|
      days << create_day(line) if line =~ DAY_REGEX
    end

    days
  end

  private 

  def create_day(data)
    regex_captures = data.match(DAY_REGEX)
    max_temp = regex_captures[:max_temp].to_i
    min_temp = regex_captures[:min_temp].to_i
    day = regex_captures[:day].to_i
    Day.new(max: max_temp, min: min_temp, day_of_the_month: day)
  end

  DAY_REGEX = /^\s*(?<day>\d{1,2})\s*(?<max_temp>\d{1,3})\s*(?<min_temp>\d{1,3})/

end
