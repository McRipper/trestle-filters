require_relative 'lib/trestle/filters/version'

Gem::Specification.new do |spec|
  spec.name          = "trestle-filters"
  spec.version       = Trestle::Filters::VERSION

  spec.authors       = ["Emanuele Barban"]
  spec.email         = []

  spec.summary       = "Filter plugin for the Trestle admin framework"
  spec.homepage      = "https://www.trestle.io"
  spec.license       = "LGPL-3.0"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  end

  spec.require_paths = ["lib"]

  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/McRipper/trestle-filters"

  spec.add_dependency "trestle", "~> 0.9.0", ">= 0.9.3"
  spec.add_dependency "ransack", "~> 2.4.0"

  spec.add_development_dependency "rspec-rails", "~> 3.0"
end
