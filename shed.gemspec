# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shed/version'

Gem::Specification.new do |spec|
  spec.name          = "shed"
  spec.version       = Shed::VERSION
  spec.authors       = "Jon Moss"
  spec.email         = "me@jonathanmoss.me"

  spec.summary       = "A simple Ruby web framework"
  spec.description   = "A simple Ruby web framework"
  spec.homepage      = "https://github.com/jetframework/shed"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|examples)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rack"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rack-test"
end
