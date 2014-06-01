# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "livestatus/version"

Gem::Specification.new do |s|
  s.name        = "livestatus"
  s.version     = Livestatus::VERSION
  s.authors     = ["Wolfgang Barth"]
  s.email       = ["wob@swobspace.net"]
  s.homepage    = "https://github.com/swobspace/livestatus"
  s.summary     = %q{Livestatus is a simple Ruby library to control Nagios via MK Livestatus.}
  s.description = %q{Livestatus is a simple Ruby library to control Nagios via MK Livestatus.}
  s.license	= 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "activesupport"
  s.add_runtime_dependency "i18n"
  s.add_runtime_dependency "patron"
  s.add_runtime_dependency "yajl-ruby"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "dotenv"
end
