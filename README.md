# better-test-logger

This is an **approach** to how we can enable accurate testing of logs in our Rails app.

Instead of the typical way of having all tests write logs to a single file, we now use `StringIO`, which allows us to isolate each test case.

We can then write simple and accurate tests to check for only parts of logs that matter, like:

`expect(Rails.logger.messages).to include("This is a sample error")`

over doing something like this:

`expect(Rails.logger).to have_received(:info).with(/\[class=SomeController\] This is a sample error that is only a part of the full string/)`

This is designed to work well with https://github.com/axxng/better-tagged-logger
