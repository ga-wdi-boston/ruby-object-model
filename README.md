[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Object Inheritance, Composition and Mixins in Ruby

## Prerequisites

-   [ga-wdi-boston/ruby-object](https://github.com/ga-wdi-boston/ruby-object)
-   [ga-wdi-boston/ruby-object-inheritance](https://github.com/ga-wdi-boston/ruby-objecs-inheritance)

## Objectives

By the end of this, students should be able to:

-   Give two reasons why inheritance and Mixins are desirable.
-   Write a class which inherits from another class.
-   Write a mixin
-   Describe the difference between inheritance, composition, and mixins

## Preparation

1.  [Fork and clone](https://github.com/ga-wdi-boston/meta/wiki/ForkAndClone)
    this repository.
1.  Install dependencies with `bundle install`.

## Ruby Inheritance

Let's discuss the code below:

```ruby
class Car
  attr_reader :engine
  def initialize
    @engine = 1200
  end
end

class Ford < Car
end

focus = Ford.new
puts focus.engine
```

Whenever I create a new instance of a `Ford`, Ruby looks for a method called `initialize`. In this case, it doesn't find that method on the `Ford` class, so it finds the method on it's parent `Car`. `focus` is an instance of the `Car` class,  so *it inherits all of methods defined in the `Car` class.*

## Ruby Composition

```ruby
class Album
  attr_accessor :tracks

  def initialize
    @tracks = []
  end
end

class Song
  def initialize(title)
    @title = title
  end
end

lemonade = Album.new()
lemonade.tracks << Song.new('Formation')
```

Sometimes, we want build more complex object by using specific instances of other
 objects. We can use composition to acheive this. In this case, we will add
 instances of the `Song` class to the tracks of our album.

## Ruby Mixins

We want to make chunks of code that are resuable across of multiple classes.
These "chunks" are called `modules`. Take a look at the code below:

```ruby
module Sleepable
  def go_to_sleep
    # code here
  end
end

class Person
  include Sleepable
end

class Computer
  include Sleepable
end
```

In the code above we defined a `module` called Sleepable. We also define a
`Person` class and a `Computer` class. By using the keyword `include` followed
by the name of the module (in this case `Sleepable`) we have access to the methods
we defined in our module.  This is great because it allows us to keep our code
*D-R-Y*, not to mention it allows us to be lazy developers (the good kind of
lazy).

You will sometimes hear the word 'composition' when referring to mixins.

## What should I use?

`is-a`: A Ford *is a* car. Inheritance creates a *subclass* - a class that has access to all of the methods of it's parent class. You should use it if your class is a *type* of it's parent class, like Ford is a type of car. A Ford is a more specialized, less abstract version of the Car class.

`has-a`: An Album *has a* song on it. We use composition when class instances
contain instances of other classes.

`behaves-as`: Mixins are used when a *behavior* is shared between various classes. People and computers both share the sleep behavior in the example above. People and computers are very different - it wouldn't make sense for them to inherit from the `Sleepable` class.

### Class or mixin?
When deciding whether to write a class or mixin, ask yourself if what you're
writing will need an initialize function. If you do, you should be writing a class.
Classes have state and behavior. Mixins are only for behavior - they don't hold
state.

## Lab: Write a Mixin

Open the file `lib/equine.rb`

- Create a class `Equine` with a method `eat_grass`
- Create three classes `Horse`, `Zebra`, and `Mule` that inherit from `Equine`
- Create a mixin `Ridable` with a method `ride`
- Include that method in the `Horse` and `Mule` class

Use `bin/rake test` to test your code.

## Additional Resources

-   [Useful links to documentation](https://www.ruby-lang.org/en/documentation/)
-   [Stack Overflow: Inheriterance](http://stackoverflow.com/questions/15754768/when-do-we-use-ruby-module-vs-using-class-composition)

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
