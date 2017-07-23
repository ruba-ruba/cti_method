[![Build Status](https://travis-ci.org/ruba-ruba/cti_method.svg?branch=master)](https://travis-ci.org/ruba-ruba/cti_method)


## CTIMethod

CTI Method provides simple boilerplate interface from class method to instance method of the class

### Installation

Add this line to your application's Gemfile:

```ruby
gem 'cti_method'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cti_method

### Usage

```ruby
# before
class Example
  def self.some_method(arg1)
    new.some_method(arg1)
  end

  def some_method(arg1)
    # code
  end
end

# after

class Example
  cti_method :some_method

  def some_method(arg1)
    # code
  end
end
```

### Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ruba-ruba/cti_method. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

