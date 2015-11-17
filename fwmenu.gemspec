# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fwmenu/version'

Gem::Specification.new do |spec|
  spec.name          = "fwmenu"
  spec.version       = Fwmenu::VERSION
  spec.authors       = ["Brian"]
  spec.email         = ["brian@futureworkz.com"]

  spec.summary       = %q{Menu manager for Rails.}
  spec.description   = %q{Allow admin to be able to create or manage menu in Rails backend.}
  spec.homepage      = "https://github.com/brianfwz/fwmenu"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_dependency('enumerize')
  spec.add_dependency('friendly_id', '5.1.0')
  spec.add_dependency('slim-rails')
end
