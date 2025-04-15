$LOAD_PATH << File.expand_path('services', __dir__)

require_relative 'services/helloworld_services_pb'

class TestService < Greeter::Service
  def say_hello(name)
    "Hello, #{name}"
  end
end

