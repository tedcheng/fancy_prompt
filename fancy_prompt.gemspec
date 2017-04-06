# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fancy_prompt/version'

Gem::Specification.new do |spec|
  spec.name          = "fancy_prompt"
  spec.version       = FancyPrompt::VERSION
  spec.authors       = ["Dan Loman, Ted Cheng"]
  spec.email         = ["dan.loman@instacart.com, ted@instacart.com"]

  spec.summary       = %q{Better Rails console prompt.}
  spec.description   = %q{Better Rails console prompt.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
