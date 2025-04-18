# frozen_string_literal: true

source "https://rubygems.org"

LAST_WORKING_RELEASE = "1.64.3"
FAILING_RELEASE_SINCE = "1.65.0"
GRPC_VERSION = ENV["bad"] ? FAILING_RELEASE_SINCE : (ENV["GRPC_VERSION"] || LAST_WORKING_RELEASE)
gem "grpc", GRPC_VERSION

gem "grpc_mock", github: 'rosenfeld/grpc_mock', branch: 'interceptors'

gem "cucumber"

gem "rspec"

