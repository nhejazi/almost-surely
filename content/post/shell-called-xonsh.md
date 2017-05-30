+++
date = "2016-06-25"
author = "Nima Hejazi"
title = "a shell called xonsh"
summary = "Discussion of the new Python-based Xonsh shell"
categories = [ "tools", "productivity", "computing" ]
comments = true

+++

Any computational scientist who spends their time writing and using tools or
analyzing data has certainly had to spend a great deal of his/her time
interacting with a command line interface (as an aside, I at one point spent so
much time staring at the command line that I wrote a set of scripts to provide
me with comical quotes to break up the monotony of my work -- it can be found
[here](https://github.com/nhejazi/good-news)). Despite the extensive use that
it sees, shell languages that operate from a terminal (or from the command line)
are rather few in number; moreover, the vast majority of such languages sport
syntax that is nearly mind-numbing (and have steep learning curves, making them
incredibly unfriendly to new practitioners). To solve this problem, the
[xonsh](http://xon.sh/) shell has recently been developed, taking
[python](https://www.python.org/) as inspiration for implementing its scripting
language.

By clever use of some of Python's existing modules, and a great deal of work,
the community around xonsh has been able to successfully provide a shell that is
ideally suited to the purposes of most computational scientists, from
statisticians to physicists, and beyond. Though xonsh is rather new and will
certainly undergo a great deal of further development, it is already mature
enough for use for most day-to-day purposes. I've even adopted it as a secondary
shell for most of my own work...

Though xonsh will certainly not replace the likes of [GNU
Bash](https://www.gnu.org/software/bash/) anytime in the near future, the
friendly (pythonic) syntax, support of python modules from a command line
interface, and development of new tools for extending its capabilities certainly
provides xonsh with numerous advantages over bash. Look, you can make histograms
(and view them easily) in the terminal with
[bashplotlib](https://github.com/glamp/bashplotlib)! Or, perhaps even better (so
good, I gave it a whole blog post already), you can have automatic GitHub
completion in your terminal with
[gitsome](https://github.com/donnemartin/gitsome), which is based on the python
REPL used by xonsh.

Want to install xonsh and use it for your own (...and maybe some of these other
tools too)? _Easy._ __Just use `pip` with your Python 3.4+.__ That's right,
they're all on [PyPi](https://pypi.python.org/pypi).

On most machines, installing xonsh and gitsome is as easy as:

```bash
pip3 install xonsh
pip3 install gitsome
```

Now that I've finished with my goal of promoting/praising xonsh and gitsome as
best as I know how, it's probably best to wrap this post up. Until my next
post -- _cheers_.

**_last updated: 25 June 2016_**
