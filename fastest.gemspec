# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Josep M. Bach"]
  gem.email         = ["josep.m.bach@gmail.com"]
  gem.description   = %q{th fstst tstng frmwrk.}
  gem.summary       = %q{th fstst tstng frmwrk.}
  gem.homepage      = 'http://github.com/txus/fastest'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "fastest"
  gem.require_paths = ['lib']
  gem.version       = '0.1.0'
end
