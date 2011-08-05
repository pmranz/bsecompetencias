if Rails.env.test?
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |t|
    t.libs << "test"
    t.test_files = FileList['test/*_test.rb']
    t.verbose = true
  end
end

task :bamboo do
  Rake::Task["db:drop"].invoke
  Rake::Task["db:create"].invoke
  Rake::Task["db:migrate"].invoke
  Rake::Task["ci:setup:testunit"].invoke
  Rake::Task["test"].invoke
  Rake::Task["test:plugins"].invoke
  Rake::Task["rcqa"].invoke
end
