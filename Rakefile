require 'rubygems'
require 'spec'
require 'spec/rake/spectask'

gem_name = "diacritics_fu"

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = gem_name
    s.summary = %Q{A small library to remove accents from a string. Relies on ActiveSupport.}
    s.email = "thibaut.barrere@gmail.com"
    s.homepage = "http://github.com/thbar/diacritics_fu"
    s.description = "TODO"
    s.authors = ["Thibaut Barrère"]
    s.rubyforge_project = 'diacritics-fu'
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

begin
  require 'rake/contrib/sshpublisher'
  namespace :rubyforge do

    desc "Release gem and RDoc documentation to RubyForge"
    task :release => ["rubyforge:release:gem", "rubyforge:release:docs"]

    namespace :release do
      desc "Publish RDoc to RubyForge."
      task :docs => [:rdoc] do
        config = YAML.load(
            File.read(File.expand_path('~/.rubyforge/user-config.yml'))
        )

        host = "#{config['username']}@rubyforge.org"
        # TODO - sort out this - vs _ thingy
        remote_dir = "/var/www/gforge-projects/diacritics-fu"
        local_dir = 'rdoc'

        Rake::SshDirPublisher.new(host, remote_dir, local_dir).upload
      end
    end
  end
rescue LoadError
  puts "Rake SshDirPublisher is unavailable or your rubyforge environment is not configured."
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = gem_name
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |t|
  t.libs << 'lib' << 'spec'
  t.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |t|
  t.libs << 'lib' << 'spec'
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.rcov = true
end

begin
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:features)
rescue LoadError
  puts "Cucumber is not available. In order to run features, you must: sudo gem install cucumber"
end

task :default => :spec

desc "run specs for the gem against all available activesupport versions"
task :spec_multi do
  # hmm - there's probably a better way to write this
  IO.popen("gem list activesupport").readlines.last.split(',').grep(/(\d\.\d\.\d)/) { $1 }.each do |version|
    throw "Failed against ActiveSupport v#{version}" unless system("rake spec DIACRITICS_FU_ACTIVESUPPORT_VERSION=#{version}")
  end
end