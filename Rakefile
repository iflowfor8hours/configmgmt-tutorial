desc "Creates a new cookbook."
task :new_cookbook, :name do |t, args|
  p args.name
  sh "bundle exec knife cookbook create #{args.name}"
  sh "bundle exec knife cookbook create_specs #{args.name}"
  minitest_path = "cookbooks/#{args.name}/files/default/tests"
  mkdir_p minitest_path
  File.open("#{minitest_path}/default_test.rb", 'w') do |test|
    test.puts "require 'minitest/spec'"
    test.puts "describe_recipe '#{args.name}::default' do"
    test.puts "end"
  end
end

