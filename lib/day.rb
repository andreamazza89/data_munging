class Day

  attr_reader :day_of_the_month

  def initialize(arguments)
    @minimum_temperature = arguments[:min]
    @maximum_temperature = arguments[:max]
    @day_of_the_month = arguments[:day_of_the_month]
  end

  def spread
    @maximum_temperature - @minimum_temperature
  end

end
