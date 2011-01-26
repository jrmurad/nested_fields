# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{nested_fields}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jason Murad"]
  s.date = %q{2011-01-25}
  s.description = %q{Unobtrusive dynamic nested forms}
  s.email = %q{jason@thriess.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "app/controllers/nested_fields_controller.rb",
    "app/helpers/nested_fields_helper.rb",
    "app/views/nested_fields/_add_nested_fields.html.erb",
    "app/views/nested_fields/_block.html.erb",
    "app/views/nested_fields/_nested_fieldset.html.erb",
    "app/views/nested_fields/_singular_nested_fieldset.html.erb",
    "config/routes.rb",
    "lib/nested_fields.rb",
    "nested_fields.gemspec",
    "public/javascripts/nested_fields.js",
    "test/helper.rb",
    "test/test_nested_fields.rb"
  ]
  s.homepage = %q{http://github.com/jrmurad/nested_fields}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Unobtrusive dynamic nested forms}
  s.test_files = [
    "test/helper.rb",
    "test/test_nested_fields.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

