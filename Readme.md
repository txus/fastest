#fastest

**fastest** is a testing framework written in [6 lines of code](
https://github.com/txus/fastest/blob/master/lib/fastest.rb) (or 473 characters)

which tries to be performant, with eye-catchy reports and easy to use.

Originally named **a**, the name was too much for Google so I changed it.

Heavily inspired by Konstantin Haase's [almost-sinatra](
http://github.com/rkh/almost-sinatra), its long-term purpose is to become the
fastest testing framework available.

In order to contribute to **fastest**, you have to bear in mind that the code
**must** stay under 7 lines and with **less than 80 chars** per line. There is
room for optimization.

In case more sophisticated behavior was needed, it could be included as an
**optionally loadable addon**. An example of this is [fastest/parallel](
https://github.com/txus/fastest/blob/master/lib/fastest/parallel.rb), an addon
that enables your tests to run in parallel, which means faster.

##Features

  * Setup / Teardown
  * Assertions (using the `a` method)
  * Report tests/assertions/failures
  * Keep track of lines where failures happened

##Install

    $ gem install fastest

Or in your Gemfile:

    gem 'fastest'

##Addons

  * Require `fastest/parallel` in your test helper or suite to run your tests
  in parallel.

##Usage

````ruby
require 'fastest'

# Every test case must inherit from the A class
class MyTestCase < A
  def setup
    @user = { :some => :object }
  end

  def test_user_has_property
    a @user[:some] == :object
    a !@user[:other]
  end

  def teardown
    @user = nil
  end
end

class MyOtherTestCase < A
  def setup
    @foo = [1,2,3]
  end

  def test_user_has_property
    a @foo.length == 3
    a @foo[2] > 934 # Should fail at line 27

    @foo[1] = 99

    a @foo[1] != 2
  end

  def teardown
    @bar = :something
  end
end
````

And voilà:

![a](http://dl.dropbox.com/u/2571594/a_screenshot.png)

##Disclaimer

**fastest** has no automated tests nor documentation, and I will have to turn
down any pull request that contains those, unless the tests are written in
**fastest** itself.

## Copyright

Copyright (c) 2011 Josep M. Bach. Released under the MIT license.
