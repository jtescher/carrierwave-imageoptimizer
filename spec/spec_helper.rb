require 'simplecov'
require 'coveralls'
SimpleCov.formatter = Coveralls::SimpleCov::Formatter
SimpleCov.start

$LOAD_PATH << File.expand_path('../../lib', __FILE__)
require 'carrierwave-imageoptimizer'