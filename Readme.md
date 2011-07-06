#a

**a** is a testing framework written in 6 lines of code (or 473 characters)
which tries to be performant, with eye-catchy reports and easy to use.

Heavily inspired by Konstantin Haase's [almost-sinatra](
http://github.com/rkh/almost-sinatra), its long-term purpose is to become the
fastest testing framework available.

In order to contribute to **a**, you have to bear in mind that the code
**must** stay under 7 lines and with **less than 80 chars** per line. There is
room for optimization.

##Features

  * Setup / Teardown
  * Assertions (using the `a` method)
  * Report tests/assertions/failures
  * Keep track of lines where failures happened

##Install

    $ gem install a-gem

Or in your Gemfile:

    gem 'a-gem'

##Usage

````ruby
require 'a'

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

![a](http://dl.dropbox.com/u/2571594/a.png)

##Disclaimer

**a** has no automated tests nor documentation, and I will have to turn down
any pull request that contains those, unless the tests are written in **a**
itself.

## Copyright

Copyright (c) 2011 Josep M. Bach. Released under the MIT license.
