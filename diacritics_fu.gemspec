# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{diacritics_fu}
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thibaut Barr\303\250re"]
  s.date = %q{2009-03-29}
  s.description = %q{TODO}
  s.email = %q{thibaut.barrere@gmail.com}
  s.extra_rdoc_files = ["README"]
  s.files = ["History.txt", "Manifest.txt", "VERSION.yml", "lib/diacritics_fu", "lib/diacritics_fu/new_escaper.rb", "lib/diacritics_fu/new_escaper_kcode_utf8.rb", "lib/diacritics_fu/old_escaper.rb", "lib/diacritics_fu.rb", "spec/diacritics_fu_spec.rb", "spec/spec_helper.rb", "README"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/thbar/diacritics_fu}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{diacritics-fu}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A small library to remove accents from a string. Relies on ActiveSupport.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
