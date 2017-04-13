class Equine
  def eat_grass
  end
end

module Ridable
  def ride
  end
end

class Horse < Equine
  include Ridable
end

class Mule < Equine
  include Ridable
end

class Zebra < Equine
end
