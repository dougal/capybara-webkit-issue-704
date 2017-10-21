# Issue is now fixed!

Capybara-Webkit [Issue #704 - `type` property of file field is empty](https://github.com/thoughtbot/capybara-webkit/issues/704)
===================================================================

Setup
-----

Ruby version is MRI 2.2.0, as described by .ruby-version.

Run bundle install to install dependencies:

    bundle install


Running the app manually to see correct response
------------------------------------------------

  1. Run the server: `bundle exec rackup`

  2. Navigate to [http://localhost:9292/](http://localhost:9292/)

  3. Select any file using the file field.

  4. Click the `Show Type` button.

  5. The type of the file will be outputted to the browser's console.

Running Specs
-------------

    bundle exec rake spec


What's going on?
----------------

The app is a single page, which when a file is selected, and the button
clicked, uses JavaScript to output the file's mime type to the browser console.

The spec does the same, and reads the browser console to look for the correct
mime type.

When run using Capybara-Webkit, the `type` field of the file is returned as an
empty string.
