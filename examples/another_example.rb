$: << 'lib'

require 'a'

class TestGroup < A
  def test_falsiness
    a false == false
  end

  def test_nilness
    a nil == nil
  end
end

class MySecondTestCase < A
  def not_trueliness
    a true != false
  end
end
