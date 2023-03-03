class CarBuilder
  def with_engine(engine)
    @engine = engine

    self
  end

  def with_exhaust(exhaust)
    @exhaust = exhaust

    self
  end

  def with_wheels(wheels)
    @wheels = wheels

    self
  end

  def build
    Car.new(engine: @engine, exhaust: @exhaust, wheels: @wheels)
  end
end

class Car
  attr_reader :engine, :exhaust, :wheels

  def initialize(engine:, exhaust:, wheels:)
    @engine = engine
    @exhaust = exhaust
    @wheels = wheels
  end
end

car = CarBuilder.new
                .with_engine('manual')
                .with_exhaust('skunk2')
                .with_wheels('gold')
                .build

puts car.exhaust
