require File.expand_path("#{File.dirname(__FILE__)}/../config/environment")
require 'rspec'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

#setup rspec
RSpec.configure do |config|

end
