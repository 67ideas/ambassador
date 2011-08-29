# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ambassador/version"

Gem::Specification.new do |s|
  s.name        = "ambassador"
  s.version     = Ambassador::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jack Hoge", "Cody Christian"]
  s.email       = ["jack@67ideas.com", "cody@zferral.com"]
  s.homepage    = "http://getambassador.com"
  s.summary     = %q{A simple Ruby wrapper for the Ambassador API}
  s.description = %q{The Ambassador API exposes RESTful URLs that return data in either XML or JSON. Use this gem to quickly make requests to their service.}

  s.rubyforge_project = "ambassador"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
