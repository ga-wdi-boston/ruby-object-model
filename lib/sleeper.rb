# define module Sleeper
module Sleepable
  def go_to_sleep
    # code here
  end
end

# define Class Person
class Person
  include Sleepable
end

# define Class Computer
class Computer
  include Sleepable
end
