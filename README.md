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
require 'jmonkeyengine'

# Load JME AppSettings for setting things like resolution, fullscreen, and title
java_import "com.jme3.system.AppSettings"
app_settings = AppSettings.new(true)
app_settings.title = "My game"
app_settings.fullscreen = true
app_settings.set_resolution(1024, 768) #old school resolution
MyGame.settings = app_settings

# Add in some colors
java_import "com.jme3.math.ColorRGBA"
view_port.background_color = ColorRGBA.new(ColorRGBA.random_color)
```

## TODO
* Add aliases to help aide ruby style programming for methods like `SimpleApplication#simpleInitApp`
* Add Ruby module namespaces with group requires like `require "jmonkeyengine/scene"` for `Node`, `Spatial`, `Geometry`, etc...
* Also adding individual requires so your code has `require` instead of `java_import` all over the place.
* Possibly add some sort of `rake scaffold` type task to generate a basic folder structure for starting a game.
* Add development rake task to check jmonkeyengine site for latest stable build and unpack


## Future Possible API

```ruby
# Just include all 450,000 classes... Probably not a good idea?
require 'jmonkeyengine/all'

# Require all classes scoped to com.jme3.bullet.*
require 'jmonkeyengine/bullet'
JMonkeyEngine::BulletAppState
# Should this be...
JMonkeyEngine::CapsuleCollisionShape || JMonkeyEngine::Collision::Shapes::CapsuleCollisionShape
# I like the first way because it's shorter, but not sure if that will conflict with other classes.

# SimpleApplication that should boot a default blank window
require 'jmonkeyengine/app/simple_application'
SimpleApplication.new.start
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/jmonkeyengine/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
