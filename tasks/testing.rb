require 'spec/rake/spectask'

Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs      << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
  spec.spec_opts << "-c"
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs     << 'lib' << 'spec'
  spec.rcov_opts = ['--exclude', 'spec', '--exclude', 'gems']
  spec.pattern   = 'spec/**/*_spec.rb'
  spec.rcov      = true
end

task :spec => :check_dependencies
