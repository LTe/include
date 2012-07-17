# -*- encoding: utf-8 -*-
require File.expand_path('../lib/include/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Piotr Niełacny"]
  gem.email         = ["piotr.nielacny@gmail.com"]
  gem.description   = %q{Include a class to class}
  gem.summary       = %q{Include a class to class}
  gem.homepage      = "https://github.com/LTe/include"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "include"
  gem.require_paths = ["lib"]
  gem.version       = Include::VERSION
end
