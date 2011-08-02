class Array;def pmap;map{|x|Thread.start{yield x}}.map{|t|t.join.value};end;end
$r='pmap';
