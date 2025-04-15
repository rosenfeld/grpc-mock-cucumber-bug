# Instructions on how to reproduce the bug:

Make sure the tests will pass with version 1.63.0:

    bundle
    bin/cucumber

Then change the grpc version in the Gemfile to "1.71.0" and re-run the steps above.

You should notice the command will never exit.

