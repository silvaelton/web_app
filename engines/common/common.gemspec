$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "common/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "common"
  s.version     = Common::VERSION
  s.authors     = ["Elton Silva"]
  s.email       = ["elton.chrls@gmail.com"]
  s.homepage    = "https://github.com/codhab/web_app"
  s.summary     = ""
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"

  s.add_development_dependency "sqlite3"
end
