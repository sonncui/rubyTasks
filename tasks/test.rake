namespace :test do

  desc 'test for fizz_buzz.'
  task :fizz_buzz do
    ruby './tests/fizz_buzz_test.rb'
  end

  desc 'test for auto_wrap.'
  task :auto_wrap do
    ruby './tests/wrap_test.rb'
  end

  desc 'test for numbers_to_words.'
  task :numbers_to_words do
    ruby './tests/number_transfer_test.rb'
  end

  desc 'run all tests.'
  task :all => [:fizz_buzz, :auto_wrap, :numbers_to_words]
end

desc 'run all tests.'
task :test => 'test:all'
