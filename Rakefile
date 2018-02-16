require 'simplecov'
require 'rake'


SimpleCov.start

desc "run all tests"
task :test do
  my_files = FileList['test/**/*.rb']
  my_files.each do |file|
    ruby file
  end
end

task default: ["test"]
