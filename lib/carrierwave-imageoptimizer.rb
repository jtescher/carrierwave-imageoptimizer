require "image_optimizer"
require "carrierwave-imageoptimizer/version"

module CarrierWave
  module ImageOptimizer
    def optimize
      ::ImageOptimizer.new(current_path).optimize
    end
  end
end
