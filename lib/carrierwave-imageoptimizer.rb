require "image_optimizer"
require "carrierwave-imageoptimizer/version"

module CarrierWave
  module ImageOptimizer
    def optimize
      manipulate! do |img|
        ::ImageOptimizer.new(current_path).optimize
        img
      end
    end
  end
end
