$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "her_cache_unmodified/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "her_cache_unmodified"
  s.version     = HerCacheUnmodified::VERSION
  s.authors     = ["Kvokka"]
  s.email       = ["root_p@mail.ru"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of HerCacheUnmodified."
  s.description = "TODO: Description of HerCacheUnmodified."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
