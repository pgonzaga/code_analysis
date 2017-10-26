Gem::Specification.new do |s|
  s.name        = 'code_analysis'
  s.version     = '1.0'
  s.date        = '2017-10-26'
  s.summary     = 'Adds code analysis tools to your project'
  s.description = 'Adds a task to run rubocop, reek, rails_best_practices and scss lint into your rails project'
  s.authors     = ['Pablo Gonzaga']
  s.email       = 'pgonzaga.uy@gmail.com'
  s.files       = Dir.glob("{bin,lib}/**/*")
  s.homepage    = 'https://github.com/pgonzaga/code_analysis'
  s.license       = 'MIT'

  s.add_dependency 'reek', '~> 4.7.2'
  s.add_dependency 'rubocop', '~> 0.51.0'
  s.add_dependency 'rails_best_practices', '~> 1.19'
  s.add_dependency 'scss_lint', '~> 0.55.0'
end
