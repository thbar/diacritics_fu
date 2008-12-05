Gem::Specification.new do |s|
  s.name     = "diacritics_fu"
  s.version  = "1.0.1"
  s.date     = "2008-12-05"
  s.summary  = "Tiny Ruby library to remove accents and other diacritics from a string (relies on ActiveSupport)."
  s.email    = "thibaut.barrere@gmail.com"
  s.homepage = "http://github.com/thbar/diacritics_fu"
  s.description = "A small library to remove accents from a string."
  s.has_rdoc = true
  s.authors  = ["Thibaut Barrère"]
  s.files    = ["History.txt", 
		"README",
		"Rakefile",
		"Manifest.txt",
		"diacritics_fu.gemspec", 
		"lib/diacritics_fu.rb",
		"lib/diacritics_fu/new_escaper.rb",
		"lib/diacritics_fu/old_escaper.rb"]
  s.test_files = ["spec/diacritics_fu_spec.rb","spec/spec_helper.rb"]
  
  s.rdoc_options = ["--main", "README"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README"]
  s.add_dependency("activesupport", ["> 0.0.0"])
end