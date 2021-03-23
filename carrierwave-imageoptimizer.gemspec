# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carrierwave-imageoptimizer/version'

Gem::Specification.new do |gem|
  gem.name          = "carrierwave-imageoptimizer"
  gem.version       = CarrierWave::ImageOptimizer::VERSION
  gem.authors       = ["Julian Tescher"]
  gem.email         = ["jatescher@gmail.com"]
  gem.description   = %q{A simple image optimizer for CarrierWave}
  gem.summary       = %q{Simply optimize CarrierWave images via jpegoptim or optipng}
  gem.homepage      = "https://github.com/jtescher/carrierwave-imageoptimizer"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.license       = 'MIT'
  gem.signing_key   = File.expand_path('~/.ssh/gem-private_key.pem') if $0 =~ /gem\z/
  gem.cert_chain  = ['certs/jtescher.pem']

  gem.add_dependency "carrierwave", [">= 0.8", "< 3.0"]
  gem.add_dependency "image_optimizer", ["~> 1.6"]

  gem.add_development_dependency "rspec",     "~> 3.9.0"
  gem.add_development_dependency "rake",      "~> 13.0.1"
  gem.add_development_dependency "simplecov", "~> 0.16.1"
  gem.add_development_dependency "coveralls", "~> 0.8.23"
end
