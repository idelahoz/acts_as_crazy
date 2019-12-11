# ActsAsCrazy

I know right? what's the porpuse of this gem? Why would anyone install it?

Exacly!!

You should not install this gems. It will make your objects act like crazy.

This gem has only educational porpuses. Mainly to serve as an example for this talk: https://slides.com/israeldelahoz/gems#/

## Installation

**You should not install this gem!!!**. But if you're that crazy just do it like this:

Add this line to your application's Gemfile:

```ruby
gem 'acts_as_crazy'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install acts_as_crazy

## Usage

To enable `acts_as_crazy` simply call `acts_as_crazy` in the scope of a ruby class:

```ruby
  class Foo
    acts_as_crazy

    def some_method
      ......
    end
  end
```

then whenever you call a method in an instance of that class you'll get random errors:

```
  Foo.some_method
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/acts_as_crazy.
