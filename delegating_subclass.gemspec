# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "delegating_subclass/version"

Gem::Specification.new do |spec|
  spec.name          = "delegating_subclass"
  spec.version       = DelegatingSubclass::VERSION
  spec.authors       = ["Yuta Aoyagi"]
  spec.email         = ["yuta.aoyagi.1992@gmail.com"]

  spec.summary       = "A subclass delegating some methods to the given object"
  spec.description   =
    "This gem provides a method dynamically making a subclass of the " \
    "specified superclass.  An instance of the subclass delegates the " \
    "methods specified in making the class to the first argument of its " \
    "constructor."
  spec.homepage      =
    "https://github.com/github.com/yuta-aoyagi/delegating_subclass"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rspec"
end
