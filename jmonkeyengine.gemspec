# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jmonkeyengine/version'

Gem::Specification.new do |spec|
  spec.name          = "jmonkeyengine"
  spec.version       = JMonkeyEngine::VERSION
  spec.authors       = ["Jeremy Woertink"]
  spec.email         = ["jeremywoertink@gmail.com"]
  spec.summary       = %q{Easily include the JME jar in your project}
  spec.description   = %Q{Easily include JME#{JMonkeyEngine::JME_VERSION} into your project.}
  spec.homepage      = "https://github.com/jwoertink/jmonkeyengine-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
