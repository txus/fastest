$n=Time.now;$f=[];$t=[];$a=0;class A;def a c;$a+=1;print c ?"\e[32m.\e[0m":($f\
<<caller[0];"\e[31mF\e[0m");end;def self.inherited(b);$t<<b;end;end;at_exit{$t\
.map{|t|i=t.new;i.setup rescue nil;t.instance_methods(false).map{|m|i.send m \
if !%w(setup teardown).include? m};i.teardown rescue nil};print "\n#{Time.now-
$n} s.\n#{$t.size} tests, #{$a} assertions, #{$f.size} failures\n\n"+$f.map{|f|
"\e[31mFailure\e[0m \e[97m@\e[33m #{f}"}.join("\n")+"\n";exit -1 if $f[0]}
