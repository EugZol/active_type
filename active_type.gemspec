$:.push File.expand_path("../lib", __FILE__)
require "active_type/version"

Gem::Specification.new do |s|
  s.name = 'active_type'
  s.version = ActiveType::VERSION
  s.authors = ["Tobias Kraze", "Henning Koch"]
  s.email = 'tobias.kraze@makandra.de'
  s.homepage = 'https://github.com/makandra/active_type'
  s.summary = 'Make any Ruby object quack like ActiveRecord'
  s.description = s.summary
  s.license = 'MIT'

  s.files         = `git ls-files`.split("\n").reject { |path| File.lstat(path).symlink? }
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n").reject { |path| File.lstat(path).symlink? }
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency('activerecord', '>= 3.2')

end
