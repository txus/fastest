require 'a'

class TestGroup < A
  def test_falssiness
    a false == false
  end

  def teste_nillness
    a nil == nil
  end
end

class MySecondTestCase < A
  def not_trueliness
    a true != false
  end
end
