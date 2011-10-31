# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tinymce-rails}
  s.version = "3.4.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Sam Pohlenz}]
  s.date = %q{2011-10-08}
  s.description = %q{Seamlessly integrates TinyMCE into the Rails 3.1 asset pipeline.}
  s.email = %q{sam@sampohlenz.com}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.8}
  s.summary = %q{Rails 3.1 integration for TinyMCE.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, ["~> 3.1.0"])
    else
      s.add_dependency(%q<railties>, ["~> 3.1.0"])
    end
  else
    s.add_dependency(%q<railties>, ["~> 3.1.0"])
  end
end
