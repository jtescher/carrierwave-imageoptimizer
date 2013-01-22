require 'spec_helper'

describe CarrierWave::ImageOptimizer do
  describe '#optimize' do
    before do
      @uploader = Class.new do
        include CarrierWave::ImageOptimizer
        def manipulate!; yield end
        def current_path; '/tmp/path/to/image.jpg' end
      end
    end

    it 'delegates to a new instance of ImageOptimizer with the current path to the file' do
      image_optimizer = stub(::ImageOptimizer)
      ::ImageOptimizer.should_receive(:new).with('/tmp/path/to/image.jpg').and_return(image_optimizer)
      image_optimizer.should_receive(:optimize)
      @uploader.new.optimize
    end
  end
end