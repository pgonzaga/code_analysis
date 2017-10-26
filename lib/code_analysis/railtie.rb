class CodeAnalysis::Railtie < Rails::Railtie
  rake_tasks do
    load 'tasks/code_analysis.rake'
  end
end
