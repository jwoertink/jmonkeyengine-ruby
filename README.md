# JMonkeyEngine

This gem will just include the [latest stable build](http://updates.jmonkeyengine.org/stable/3.0/engine/) source of jMonkeyEngine. That way your project won't need to include it because it's huge, and doing a `git push` with over 80mb of jar files takes a while when sitting at the airport.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jmonkeyengine'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jmonkeyengine

## Usage

1. Install the gem
2. View some [jruby examples](https://github.com/jwoertink/waves) or the [hello world tutorial](http://wiki.jmonkeyengine.org/doku.php/jme3#tutorials_for_beginners)

Basic usage (for now)

```ruby
java_import "com.jme3.system.AppSettings"

MyGame.settings = AppSettings.new(true)

java_import "com.jme3.math.ColorRGBA"
view_port.background_color = ColorRGBA.new(ColorRGBA.random_color)
```

## TODO
* Add aliases to help aide ruby style programming for methods like `SimpleApplication#simpleInitApp`
* Add Ruby module namespaces with group requires like `require "jmonkeyengine/scene"` for `Node`, `Spatial`, `Geometry`, etc...
* Also adding individual requires so your code has `require` instead of `java_import` all over the place.
* Possibly add some sort of `rake scaffold` type task to generate a basic folder structure for starting a game.
* Add development rake task to check jmonkeyengine site for latest stable build and unpack


## Contributing

1. Fork it ( https://github.com/[my-github-username]/jmonkeyengine/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
