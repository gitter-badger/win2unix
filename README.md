# Win2unix

[![Join the chat at https://gitter.im/liuxd/win2unix](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/liuxd/win2unix?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[![Gem Version](https://badge.fury.io/rb/win2unix.svg)](http://badge.fury.io/rb/win2unix)

The line breaks in windows and unix are different.That's troublesome.This gem can help you to replace the windows' line breaks into unix line breaks easily.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'win2unix'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install win2unix

## Usage

```ruby
require 'win2unix'

Win2unix.tidy(your_path) # the ext parameter is 'txt' as default.

Win2unix.tidy(your_path, 'php')
Win2unix.tidy(your_path, 'txt')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/liuxd/win2unix/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
