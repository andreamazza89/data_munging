class Day

  def initialize(arguments)
    @minimum_temperature = arguments[:min]
    @maximum_temperature = arguments[:max]
  end

  def spread
    @maximum_temperature - @minimum_temperature
  end

end
