$:.push File.expand_path("../lib", __FILE__)
require File.expand_path('../lib/voo-crumbs/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jason Webb"]
  gem.email         = ["bigjasonwebb@gmail.com"]
  gem.description   = %q{}
  gem.summary       = %q{A small library to make breadcrumbs a little easier.}
  gem.homepage      = "https://github.com/Thinkatomic/voo-crumbs"

  gem.files         = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "voo-crumbs"
  gem.require_paths = ["lib"]
  gem.version       = Voonami::Crumbs::VERSION

  gem.add_dependency "activesupport", ">= 3.0"

  gem.add_development_dependency "rspec"
end
