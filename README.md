[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Object Inheritence in Ruby (versus JavaScript)

## Prerequisites

-   [ga-wdi-boston/ruby-vs-js-objects](https://github.com/ga-wdi-boston/ruby-vs-js-objects)

## Objectives

By the end of this, students should be able to:

-   Diagram the Ruby method lookup chain, and compare it to the JavaScript
    prototype lookup chain.
-   Compare Ruby inheritance with Ruby composition.
-   Give two reasons why inheritance and composition are desirable.
-   Write a class which inherits from another class.
-   Describe why composition is preferred to inheritance.

## Preparation

1.  [Fork and clone](https://github.com/ga-wdi-boston/meta/wiki/ForkAndClone)
    this repository.
1.  Install dependencies with `bundle install`.

## JavaScript Inheriterance

You already know how Javascript object inheritence works just in case you don't
remeber here is an example.  Remember that whole prototype thing?

```javascript
User.prototype.totalDistance = function() {
  let result = 0;

  for (let i = 0; i < this.runs.length; i++) {
    result += this.runs[i].distance;
  }

  return result;
}
```
In the case above we used prototypal inheriteranceon the User object from which
instances of the User object can inherit. Now all instances of User can share in
the common property of `totalDistance`


## Ruby Inheriterance

But now in Ruby we have classes which we've already gone over.  Ruby classes have
different ways of inheriting. Take for example the following...

Some objects can be classified in multiple ways. These multiple classifications often make sense as a hierarchy. For example, a `Dog` is a kind of `Pet`. It's also a kind of `Animal`. In ruby, we can share code (data or behavior) between two classes using **inheritance**. Let's look at an example of inheritance. Note that a ruby class can only inherit from one other class, so whether you name that class `Pet` or `Animal` will depend on your application.

```ruby
class Animal
  def eat
    puts "Nom nom nom"
  end
end

class Dog < Animal
end

dog = Dog.new
dog.eat #=> "Nom nom nom"

class Dog < Animal
  def speak
    puts "WOOF"
  end

  def eat
    puts "Slop slop slop"
  end
end

dog.speak #=> "WOOF"
dog.eat #=> "Slop slop slop"

animal = Animal.new
animal.eat #=> "Nom nom nom"
animal.speak #=> NoMethodError
```

## Demo: Drawing the Class Method Chain

Please follow along as I draw the Ruby class method chain. Think about how
inheriterance works in JavaScript.

##Lab: Drawing the Ruby class method chain on your own

For this lab please diagram the class method chain using the following requirements:
- The class `Bronco` has an instance method called `suck`
- `Bronco` inherits from the class `Football`
- The class `Football` has an instance method called `play_game`
- Create a new instance of a player on the Broncos IE `manning = Bronco.new`
- Diagram `manning.suck` and `manning.play_game`

## Lab: Model Shapes Using Classes

A square is a special kind of rectangle. Create a `Square` class that inherits from `Rectangle` and override any methods you need to change to represent the idea of a `Square` in ruby code.


## Additional Resources

- **[Links to a variety of offical language and api documentation](https://www.ruby-lang.org/en/documentation/)**

## [License](LICENSE)

Source code distributed under the MIT license. Text and other assets copyright
General Assembly, Inc., all rights reserved.
