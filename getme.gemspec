# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','getme_version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'getme'
  s.version = Getme::VERSION
  s.author = 'Gerard Niemira'
  s.email = 'gniemira@gmail.com'
  s.homepage = 'http://gerardniemira.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
# Add your other files here if you make them
  s.files = %w(
bin/getme
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','getme.rdoc']
  s.rdoc_options << '--title' << 'getme' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'getme'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
end
