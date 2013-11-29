# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'matrixfamily/version'

Gem::Specification.new do |spec|
  spec.name          = "matrixfamily"
  spec.version       = Matrixfamily::VERSION
  spec.authors       = ["Alejandro Morales Pérez, Daniel Mateos Peláez"]
  spec.email         = ["alu0100548488@ull.edu.es, alu0100635836@ull.edu.es"]
  spec.description   = %q{Opera matrices (dispersas y densas), con precisión entera y decimal en los valores de éstas}
  spec.summary       = %q{Opera matrices}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
