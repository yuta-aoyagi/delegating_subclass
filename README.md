# DelegatingSubclass

This gem provides a method dynamically making a subclass of the specified superclass.  An instance of the subclass delegates the methods specified in making the class to the first argument of its constructor.

## Installation

Add this line to your application's Gemfile:

    gem "delegating_subclass", :git => "https://github.com/yuta-aoyagi/delegating_subclass.git"

And then execute:

    $ bundle

## Usage

    require "delegating_subclass"

    class Superclass
      def initialize(arg)
        p arg
      end

      def foo
        p "method in Superclass"
      end
    end

    class AnotherClass
      def bar
        p "method in AnotherClass"
      end
    end

    subclass = DelegatingSubclass.of Superclass, :bar
    another = AnotherClass.new

The returned `subclass` has `Superclass` as an ancestor:

    p subclass.ancestors.include?(Superclass) #=> true

The constructor passes its arguments except the first one:

    obj = subclass.new another, :arg #=> :arg

You can call both the methods specified to be delegated and the methods inherited from the `Superclass`:

    obj.foo #=> "method in Superclass"
    obj.bar #=> "method in AnotherClass"

## Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `bundle exec rspec` to run the tests.

To release a new version, update the version number in `version.rb`, and then create a git tag for the version, push git commits and tags.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yuta-aoyagi/delegating_subclass.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
