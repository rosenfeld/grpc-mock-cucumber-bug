require 'bundler/setup'

$LOAD_PATH << File.expand_path('../../lib', __dir__)

require_relative 'grpc'

if ENV["fix"]
  module ActiveCallPatch
    CALLS = []
    def initialize(*args, **kargs, &block)
      super
      CALLS << @call
    end
  end

  GRPC::ActiveCall.prepend ActiveCallPatch

  at_exit { ActiveCallPatch::CALLS.each(&:close) }
end
