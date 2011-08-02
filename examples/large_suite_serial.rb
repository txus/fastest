$: << 'lib'

require 'fastest'

class ParallelTestCase < A
  100.times do |i|
    define_method("test_#{i}") do
      a 3
      sleep "0.#{i}".to_f
    end
  end
end
