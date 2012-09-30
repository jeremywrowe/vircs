# -*- encoding: utf-8 -*-
require File.expand_path('../lib/vircs/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jeremy W. Rowe"]
  gem.email         = ["jeremy.w.rowe@gmail.com"]
  gem.summary       = %q{A simplistic approach to managing vim configuration files.}

  gem.files              = `git ls-files`.split($\)
  gem.executables        = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files         = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name               = "vircs"
  gem.bindir             = 'bin'
  gem.executables        = ['vircs']
  gem.default_executable = 'vircs'
  gem.require_paths      = ["lib"]
  gem.version            = Vircs::VERSION

  gem.add_development_dependency('rake')
  gem.add_development_dependency('rspec')
  gem.add_development_dependency('guard')
  gem.add_development_dependency('guard-rspec')
  gem.add_development_dependency('rb-fsevent')
  gem.add_development_dependency('growl')
  gem.add_development_dependency('pry')
end
