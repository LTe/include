# Include

Include a class to class

[![BuildStatus](http://travis-ci.org/LTe/include.png)](http://github.com/LTe/include)

## Installation

Add this line to your application's Gemfile:

    gem 'include'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install include

## Usage

Include class to the class

```ruby
require 'include'

class MyClass
  include Array.to_module
end

MyClass.new # => []
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
