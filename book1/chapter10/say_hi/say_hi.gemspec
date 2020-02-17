Gem::Specification.new do |s|
    s.name = 'say_hi'
    s.version = '0.0.1'
    s.date = "2020-02-17"
    s.summary = "Simple class with self method say_hi"
    s.platform = Gem::Platform::RUBY
    s.files = Dir.glob("**/**/**")
    s.test_files = Dir.glob("test/*_test.rb")
    s.author = "Your Name"
    s.email = "your-email-address@email.com"
    s.has_rdoc = false
    s.required_ruby_version = '>= 1.8.2'
end