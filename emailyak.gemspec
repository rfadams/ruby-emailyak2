# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "emailyak/version"

Gem::Specification.new do |s|
  s.name        = "emailyak"
  s.version     = Emailyak::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Scott Ballantyne", 'Greg Brockman']
  s.email       = ["ussballantyne@gmail.com", 'gdb@gregbrockman.com']
  s.homepage    = ""
  s.summary     = %q{making several different emailyak projects into a gem}
  s.description = %q{making several different emailyak projects into a gem description}

  s.rubyforge_project = "emailyak"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency(%q<rest-client>, [">= 0"])
  s.add_dependency('yajl-ruby', '>= 0.8.3')
end
