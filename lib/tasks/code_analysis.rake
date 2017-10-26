task :code_analysis, :disable_tools do |_t, args|
  tools_list = args[:disable_tools].try(:split, '/') || []

  unless tools_list.include?('disable_rubocop')
    sh 'bundle exec rubocop app config lib'
  end

  unless tools_list.include?('disable_reek')
    sh 'bundle exec reek app config lib -c .reek'
  end

  unless tools_list.include?('disable_rails_best_practices')
    sh 'bundle exec rails_best_practices .'
  end

  unless tools_list.include?('disable_scss_lint')
    sh 'bundle exec scss-lint app/assets/stylesheets --config .scss_lint.yml'
  end
end
