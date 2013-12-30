require 'spec_helper'

describe CarrierWave::ImageOptimizer do
  describe '#optimize' do
    before do
      @uploader = Class.new do
        include CarrierWave::ImageOptimizer
        def current_path; '/tmp/path/to/image.jpg' end
      end
    end

    it 'delegates to a new instance of ImageOptimizer with the current path to the file' do
      image_optimizer = double(::ImageOptimizer)
      expect(::ImageOptimizer).to receive(:new).with('/tmp/path/to/image.jpg', {}).and_return(image_optimizer)
      expect(image_optimizer).to receive(:optimize)
      @uploader.new.optimize
    end

    it 'accepts an optional quality param to target a specific lossy JPG quality level' do
      image_optimizer = double(::ImageOptimizer)
      expect(::ImageOptimizer).to receive(:new).with('/tmp/path/to/image.jpg', quality: 99).and_return(image_optimizer)
      expect(image_optimizer).to receive(:optimize)
      @uploader.new.optimize(quality: 99)
    end

    it 'accepts an optional quiet param to run in quiet mode' do
      image_optimizer = double(::ImageOptimizer)
      expect(::ImageOptimizer).to receive(:new).with('/tmp/path/to/image.jpg', quiet: true).and_return(image_optimizer)
      expect(image_optimizer).to receive(:optimize)
      @uploader.new.optimize(quiet: true)
    end
  end
end
