# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sounder/server/version'

Gem::Specification.new do |spec|
  spec.name          = "sounder-server"
  spec.version       = Sounder::SERVER_VERSION
  spec.authors       = ["Adam Zaninovich"]
  spec.email         = ["adam.zaninovich@gmail.com"]
  spec.description   = %q{a server and api for sounder}
  spec.summary       = %q{a server and api for sounder}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sounder", "~> 1.0.1"
  spec.add_dependency "sinatra", "~> 1.4.3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rack-test"
end
