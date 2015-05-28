# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'win2unix/version'

Gem::Specification.new do |spec|
  spec.name          = "win2unix"
  spec.version       = Win2unix::VERSION
  spec.authors       = ["liuxd"]
  spec.email         = ["liuxidong1984@gmail.com"]

  spec.summary       = %q{Shift \r\n to \n for a folder}
  spec.description   = %q{A ruby gem which can replace the windows' line breaks into unix line breaks for a folder.}
  spec.homepage      = "https://github.com/liuxd/win2unix."

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
