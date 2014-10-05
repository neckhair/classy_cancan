# ClassyCancan

[![Build Status](https://travis-ci.org/neckhair/classy_cancan.svg)](https://travis-ci.org/neckhair/classy_cancan)

When using Cancan/can, a `Ability` class in a larger Ruby on Rails application can grow quite quickly.
This gem lets you seperate model specific ability definitions into their own class.

## Installation

Add the following line to your `Gemfile`:

```ruby
gem 'classy_cancan'
```

Now run `bundle install`.

**Note**: This gem is useless without `cancan` or `cancancan`.

## Usage

And this is how you use it:

```ruby
# app/models/ability.rb
class Ability
  include CanCan::Ability

  def initialize(user)
    ContactAbility.new(self, user).setup
  end
end

# app/models/abilities/contact_ability.rb
class ContactAbility < ClassyCancan::BaseAbility
  def setup
    can :manage, Contact
  end
end
```

## Todo

- [ ] Rails generator to create ability classes

## Licence

This project rocks and uses MIT-LICENSE.
