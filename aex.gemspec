# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aex/version'

Gem::Specification.new do |spec|
  spec.name          = "aex"
  spec.version       = Aex::VERSION
  spec.authors       = ["liuliang"]
  spec.email         = ["liuliang0817@gmail.com"]

  spec.summary       = %q{Provides a wrapper for aex.com api.}
  spec.description   = %q{Provides a wrapper for aex.com api.}
  spec.homepage      = "https://github.com/liuliang/aex"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  
  spec.add_dependency 'rest-client'
  spec.add_dependency 'addressable'
end
