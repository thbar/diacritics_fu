require 'rubygems'
require 'spec'
require 'spec/rake/spectask'

task :default => :spec

desc "run specs for the gem"
Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_files = FileList["spec/**/*_spec.rb"]
end

desc "run specs for the gem against all available activesupport versions"
task :spec_multi do
  # hmm - there's probably a better way to write this
  IO.popen("gem list activesupport").readlines.last.split(',').grep(/(\d\.\d\.\d)/) { $1 }.each do |version|
    throw "Failed against ActiveSupport v#{version}" unless system("rake spec DIACRITICS_FU_ACTIVESUPPORT_VERSION=#{version}")
  end
end