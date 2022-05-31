# how to install
to install the program you need to run install(DON'T Run as ADMIN).bat and **Don't run as admin**
 and then installPart2(Run as Admin).cmd and Please **Run as admin**
 
 
**for vsCode syntax highlighting you can download from https://github.com/manifarizi/Pigo-Syntax-highlighting**


# how to run

* for running the program that you want to run you need to run command :

>"PGo filename.pgo"


# how to Program
first a hello world program is like this
```
#.PGo.start{}
PGo.Print -s{"Hello World"}
FrameGo.r0
```
* #.PGo.start{} means @echo off
* PGo.print means print.exe from libary PGo

**Libary PGo is main Folder You can add file**

* #.PGo.start{} means @echo off

for generating random number you can

```
#.PGo.start{}
pgo.var{randmin=0}
pgo.var{randmax=10}
pgo.rand{}
pgo.print -s{___AArand__}
framego.r0
```
* pgo.var for creating variables
* pgo.rand{} generate a random Number between randmin and randmax


for printing a variable you can

```
print -s{"__variablename__"}
```

# And So much more
