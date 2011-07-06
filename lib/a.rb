$n=Time.now;$f=[];$c=[];$a=0;class A;def a c;$a+=1;print c ?"\e[32m.\e[0m":($f\
<<caller[0];"\e[31mF\e[0m");end;def self.inherited(b);$c<<b;end;end;at_exit{$c\
.map{|t|i=t.new;i.setup rescue nil;$t=t.instance_methods(false).map{|m|i.send\
m if !%w(setup teardown).include? m}.compact;i.teardown rescue nil};print "\n#{
Time.now-$n} s.\n#{$t.size} tests, #{$a} assertions, #{$f.size} failures\n\n"+
$f.map{|f|"\e[31mFailure\e[0m \e[97m@\e[33m #{f}"}.join("\n");exit -1 if $f[0]}
