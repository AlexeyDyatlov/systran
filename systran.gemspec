lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "systran/version"

Gem::Specification.new do |spec|
  spec.name          = "systran"
  spec.version       = Systran::VERSION
  spec.authors       = ["alex"]
  spec.email         = ["tgh88@mail.ru"]

  spec.summary       = 'Systran IO API'
  spec.description   = 'API wrapper for Systran.io'
  spec.homepage      = 'https://github.com/AlexeyDyatlov/systran'
  spec.license       = 'MIT'

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency 'httparty'
  spec.add_development_dependency 'rubocop'
end
