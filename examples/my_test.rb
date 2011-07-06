$: << 'lib'

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
