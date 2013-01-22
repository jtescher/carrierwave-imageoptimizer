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

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "carrierwave"
end
