at_exit{$c.map{|t|i=t.new;$t=t.instance_methods(!0).send($r){|m|m=~/^test_/?(i\
.setup rescue 0;i.send m;i.teardown rescue 0;1):nil}.compact};printf"\e[0m\n%fs
%d tests, %d assertions, %d failures\n\n%s",Time.now-$n,$t.size,$a,$f.size,$f.\
map{|f|"\e[1;31mFailure\e[0m \e[97m@\e[33m #{f}\e[0m"}.join(?\n);exit 1 if$f[0]
};class A;def a c;$a+=1;print"\e[3"+(c ?"2m.":"1mF");$f<<caller[0]if !c;end;def
A.inherited(b);$c<<b;end;end;$n=Time.now;$f=[];$c=[];$a=0;$t=[];$r='map'
