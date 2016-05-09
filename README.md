capybara-browserstack
=========

This repository provides information and helpful tweaks to run your TestUnit tests on the BrowserStack selenium cloud infrastructure.

###Configuration
Add rake, test-unit, browserstack-local gems into your Gemfile.
Run `bundle install`.

### BrowserStack Authentication

Export the environment variables for the username and access key of your BrowserStack account.
These can be found on the automate accounts page on [BrowserStack](https://www.browserstack.com/accounts/automate)

`export BROWSERSTACK_USERNAME=<browserstack-username>`

`export BROWSERSTACK_KEY=<browserstack-access-key>`


###Run tests
* Single Test:
    ```
    $ rake name_of_test
    ```
Examples:
```
rake windows_firefox_40
```
You see the other tests in the rakefile.

* Tests in Parallel:
	```
	$ rake parallel_test
	```
* Local test 

To run local tests, just set the `browserstack.local` capability to true in the test.

###Further Reading
- [TestUnit](http://ruby-doc.org/stdlib-1.8.7/libdoc/test/unit/rdoc/Test/Unit.html)
- [BrowserStack documentation for Automate](https://www.browserstack.com/automate/ruby)

Happy Testing!
