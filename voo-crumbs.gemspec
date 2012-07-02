# -*- encoding: utf-8 -*-
require File.expand_path('../lib/voo-crumbs', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jason Webb"]
  gem.email         = ["bigjasonwebb@gmail.com"]
  gem.description   = %q{}
  gem.summary       = %q{A small library to make breadcrumbs a little easier.}
  gem.homepage      = "https://github.com/Thinkatomic/voo-crumbs"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "voo-crumbs"
  gem.require_paths = ["lib"]
  gem.version       = Voonami::Crumbs::VERSION
end
