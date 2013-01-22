require 'spec_helper'

describe CarrierWave::ImageOptimizer do
  it "should have a VERSION constant" do
    subject.const_get('VERSION').should_not be_empty
  end
end