# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'volter/version'

Gem::Specification.new do |spec|
  spec.name          = "volter"
  spec.version       = Volter::VERSION
  spec.authors       = ["Sergey Besedin", "Artem Shpakov"]
  spec.email         = "kr3ssh@gmail.com"
  spec.description   = %q{Volter gem}
  spec.summary       = %q{Volter gem}
  spec.homepage      = "http://github.com/Solver-Club/volter"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "voltrb"
  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
