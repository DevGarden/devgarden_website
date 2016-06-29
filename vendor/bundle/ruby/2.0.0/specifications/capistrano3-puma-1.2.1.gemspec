# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "capistrano3-puma"
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Abdelkader Boudih"]
  s.date = "2015-08-20"
  s.description = "Puma integration for Capistrano 3"
  s.email = ["Terminale@gmail.com"]
  s.homepage = "https://github.com/seuros/capistrano-puma"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.0.14"
  s.summary = "Puma integration for Capistrano"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>, ["~> 3.0"])
      s.add_runtime_dependency(%q<puma>, [">= 2.6"])
    else
      s.add_dependency(%q<capistrano>, ["~> 3.0"])
      s.add_dependency(%q<puma>, [">= 2.6"])
    end
  else
    s.add_dependency(%q<capistrano>, ["~> 3.0"])
    s.add_dependency(%q<puma>, [">= 2.6"])
  end
end
