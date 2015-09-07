# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cockpit/version'

Gem::Specification.new do |spec|
  spec.name          = "cockpit"
  spec.version       = Cockpit::VERSION
  spec.authors       = "Jon Moss"
  spec.email         = "me@jonathanmoss.me"

  spec.summary       = "A simple Ruby web framework"
  spec.description   = "A simple Ruby web framework"
  spec.homepage      = "https://github.com/jetframework/cockpit"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
