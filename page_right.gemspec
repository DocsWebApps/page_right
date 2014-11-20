# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'page_right/version'

Gem::Specification.new do |spec|
  spec.name          = "page_right"
  spec.version       = PageRight::VERSION
  spec.authors       = ["Dave Collier"]
  spec.email         = ["lardelbow@gmail.com"]
  spec.summary       = 'A simple gem that helps you with testing the contents of a rendered web page'
  spec.description   = 'A simple gem that helps you with testing the contents of a rendered web page. Currently in development.'
  spec.homepage      = "https://github.com/lardelbow/page_right"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.4"
  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "pry-doc", "~> 0.6"
end