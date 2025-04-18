# Instructions on how to reproduce the bug:

Make sure the tests will pass with version 1.64.3:

    bundle && bin/cucumber

Then change the grpc version to 1.65.0 or newer:

    GRPC_VERSION=1.65.0 bundle && GRPC_VERSION=1.65.0 bin/cucumber

You should notice the command will never exit.

If we also set the `fix` ENV, we monkey patch `GRPC::ActiveCall` to fix the problem.

The fix can be seen in `features/support/env.rb`.

    GRPC_VERSION=1.71.0 bundle && GRPC_VERSION=1.71.0 fix=1 bin/cucumber
