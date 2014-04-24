# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'finagraph/version'

Gem::Specification.new do |spec|
  spec.name          = "finagraph"
  spec.version       = Finagraph::VERSION
  spec.authors       = ["Zack Perdue"]
  spec.email         = ["zack@ziggidycreative.com"]
  spec.summary       = "Finagraph <http://finagraph.com> integration library."
  spec.description   = "Finagraph <http://finagraph.com> integration library."
  spec.homepage      = "http://github.com/zackperdue/finagraph-rb"
  spec.license       = "MIT"
  spec.add_dependency 'rest-client'
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
