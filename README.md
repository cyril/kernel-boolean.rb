# `Kernel#Boolean`

Returns a boolean based on the given argument.

## Status

[![Version](https://img.shields.io/github/v/tag/cyril/kernel-boolean.rb?label=Version&logo=github)](https://github.com/cyril/kernel-boolean.rb/tags)
[![Yard documentation](https://img.shields.io/badge/Yard-documentation-blue.svg?logo=github)](https://rubydoc.info/github/cyril/kernel-boolean.rb/main)
[![Ruby](https://github.com/cyril/kernel-boolean.rb/workflows/Ruby/badge.svg?branch=main)](https://github.com/cyril/kernel-boolean.rb/actions?query=workflow%3Aruby+branch%3Amain)
[![RuboCop](https://github.com/cyril/kernel-boolean.rb/workflows/RuboCop/badge.svg?branch=main)](https://github.com/cyril/kernel-boolean.rb/actions?query=workflow%3Arubocop+branch%3Amain)
[![License](https://img.shields.io/github/license/cyril/kernel-boolean.rb?label=License&logo=github)](https://github.com/cyril/kernel-boolean.rb/raw/main/LICENSE.md)

## Installation

Add this line to your application's Gemfile:

```ruby
gem "kernel-boolean"
```

And then execute:

```sh
bundle install
```

Or install it yourself as:

```sh
gem install kernel-boolean
```

## Usage

If the argument is `true`, returns `true`.
If the argument is `false`, returns `false`.

In all other cases, returns an error.

### Example

```ruby
require "kernel/boolean"

Boolean(false)  # => false
Boolean(true)   # => true
Boolean(nil)    # => TypeError: can't convert nil into boolean
Boolean("true") # => ArgumentError: invalid value for Boolean(): "true"
```

### Note

The `#Boolean` method could be used similarly to the methods already present in the `Kernel` module:

* `#Array`
* `#Complex`
* `#Float`
* `#Hash`
* `#Integer`
* `#Rational`
* `#String`

### Warning

The `Kernel` module is included in the `Object` class, so by loading this library, the `#Boolean` method will be available in every Ruby object.

## Versioning

`Kernel#Boolean` uses [Semantic Versioning 2.0.0](https://semver.org/)

## License

The [gem](https://rubygems.org/gems/kernel-boolean) is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
