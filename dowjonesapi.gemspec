# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dowjonesapi/version'

Gem::Specification.new do |spec|
  spec.name          = "dowjonesapi"
  spec.version       = Dowjonesapi::VERSION
  spec.authors       = ["Justin Lyman"]
  spec.email         = ["justinlyman@gmail.com"]
  spec.description   = 'Query the Dow Jones API'
  spec.summary       = 'Easy way to interact with the Dow Jones API'
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "addressable"
  spec.add_runtime_dependency "json"

  spec.add_dependency 'tilt'
  spec.add_dependency 'redcarpet'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
