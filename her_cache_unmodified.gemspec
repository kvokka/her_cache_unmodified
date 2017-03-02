$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "her_cache_unmodified/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "her_cache_unmodified"
  s.version     = HerCacheUnmodified::VERSION
  s.authors     = ["Kvokka"]
  s.email       = ["root_p@mail.ru"]
  s.homepage    = "http://github.com/kvokka/her_cache_unmodified"
  s.summary     = "Her middleware for 304 request status support"
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "her", "~> 0.8.0", ">= 0.8.0"
end
