require 'test_service'

Given('this will pass') do
  GrpcMock.stub_request("/Greeter/SayHello").to_return(HelloReply.new(message: 'Hello, John'))
end

Given('this will fail') do
  client = Greeter::Stub.new('localhost:8000', :this_channel_is_insecure)
  @response = client.say_hello HelloRequest.new(name: 'Joe')
end

When('I do an action') do
  client = Greeter::Stub.new('localhost:8000', :this_channel_is_insecure)
  @response = client.say_hello HelloRequest.new(name: 'John')
end

Then("some results should be there") do
  expect(@response.message).to eq "Hello, John"
end

