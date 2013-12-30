# CarrierWave ImageOptimizer

This gem allows you to simply optimize CarrierWave images via jpegoptim or optipng using the image_optimizer gem.

Tested against 1.9.3, 2.0.0, 2.1.0, ruby-head, jruby-19mode, jruby-head, rbx-2.1.1, rbx-2.2.0, and rbx-2.2.1

[![Build Status](https://secure.travis-ci.org/jtescher/carrierwave-imageoptimizer.png)]
(http://travis-ci.org/jtescher/carrierwave-imageoptimizer)
[![Dependency Status](https://gemnasium.com/jtescher/carrierwave-imageoptimizer.png)]
(https://gemnasium.com/jtescher/carrierwave-imageoptimizer)
[![Code Climate](https://codeclimate.com/github/jtescher/carrierwave-imageoptimizer.png)]
(https://codeclimate.com/github/jtescher/carrierwave-imageoptimizer)
[![Coverage Status](https://coveralls.io/repos/jtescher/carrierwave-imageoptimizer/badge.png)]
(https://coveralls.io/r/jtescher/carrierwave-imageoptimizer)
[![Gem Version](https://badge.fury.io/rb/carrierwave-imageoptimizer.png)](http://badge.fury.io/rb/carrierwave-imageoptimizer)

## Installation

##### This gem uses the following utilities for optimizing images:

1. jpegoptim, which can be installed from [freecode.com](http://freecode.com/projects/jpegoptim)

2. OptiPNG, which can be installed from [sourceforge.net](http://optipng.sourceforge.net/)

Or install the utilities via homebrew:

```bash
$ brew install optipng jpegoptim
```

Then add this line to your application's Gemfile:

    gem 'carrierwave-imageoptimizer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install carrierwave-imageoptimizer

## Usage

To add image optimization to your CarrierWave uploader, first include the module:

```ruby
class MyUploader < CarrierWave::Uploader::Base
  include CarrierWave::ImageOptimizer
  ...
end
```

Then apply to all versions via:

```ruby
class MyUploader < CarrierWave::Uploader::Base
  ...
  process :optimize
end
```

Or to a single image version via:

```ruby
class MyUploader < CarrierWave::Uploader::Base
  ...
  version :thumbnail do
    process :optimize
  end
end
```

##### Lossy JPEG optimization

Pass an optional `quality` parameter to target a specific lossy JPG quality level (0-100), default is lossless
optimization. PNGs will ignore the quality setting.

```ruby
class MyUploader < CarrierWave::Uploader::Base
  ...
  version :thumbnail do
    process :optimize, quality: 50
  end
end
```

##### Quiet Mode

Pass an optional `quiet` parameter to compress images without logging progress.

```ruby
class MyUploader < CarrierWave::Uploader::Base
  ...
  version :thumbnail do
    process :optimize, quiet: true
  end
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
