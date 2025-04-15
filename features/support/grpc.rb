require 'grpc_mock'

GrpcMock.enable!

After do
  GrpcMock.reset!
end
