# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "asset_sweeper"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Anil Galve"]
  s.date = "2011-08-31"
  s.description = "Cleans up application by removing unused images."
  s.email = "galve.anil@gmail.com"
  s.extra_rdoc_files = ["CHANGELOG", "README.rdoc", "lib/asset_sweeper.rb", "lib/tasks/asset_sweeper.rake"]
  s.files = ["CHANGELOG", "README.rdoc", "Rakefile", "init.rb", "lib/asset_sweeper.rb", "lib/tasks/asset_sweeper.rake", "nbproject/project.properties", "nbproject/project.xml", "asset_sweeper.gemspec", "Manifest"]
  s.homepage = "http://github.com/anilg/asset_sweeper"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Sweeper", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "asset_sweeper"
  s.rubygems_version = "1.8.10"
  s.summary = "Cleans up application by removing unused images."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
