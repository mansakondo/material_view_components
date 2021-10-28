require_relative "lib/material_view_components/version"

Gem::Specification.new do |spec|
  spec.name        = "material_view_components"
  spec.version     = MaterialViewComponents::VERSION
  spec.authors     = ["mansakondo"]
  spec.email       = ["mansakondo22@gmail.com"]
  spec.homepage    = "https://github.com/mansakondo/material_view_components"
  spec.summary     = "Material Design with ViewComponent"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/mansakondo/material_view_components/blob/main/CHANGELOG.md"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 7.0.0.alpha2"
end
