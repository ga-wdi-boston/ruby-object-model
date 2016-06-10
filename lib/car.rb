# define Class Car
class Car
  attr_reader :engine
  def initialize
    @engine = 1200
  end
end

# define Class Ford
class Ford < Car
end

car = Ford.new

puts car.engine
