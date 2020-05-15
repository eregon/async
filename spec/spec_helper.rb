# frozen_string_literal: true

if RUBY_VERSION.start_with?("2.8")
	abort "simulated ruby head failing"
end

require "covered/rspec"

if RUBY_PLATFORM =~ /darwin/
	Q = 20
else
	Q = 1
end

RSpec.configure do |config|
	# Enable flags like --only-failures and --next-failure
	config.example_status_persistence_file_path = ".rspec_status"

	config.expect_with :rspec do |c|
		c.syntax = :expect
	end
end
