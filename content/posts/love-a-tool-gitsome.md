+++
author = "Nima Hejazi"
categories = [ "tools", "productivity", "computing" ]
tags = [ "tools", "productivity", "computing" ]
date = "2016-05-12"
description = "Discussion of the Gitsome command line interface"
featured = ""
featuredalt = ""
featuredpath = ""
linktitle = ""
title = "How to love a tool - gitsome"
type = "post"
#comments = true
disableComments = false
published = true

+++

After adopting the minimalistic yet awesome [Neovim](https://neovim.io/) as my
new all-purpose text editor, I happened upon a new (and truly awesome!) shell,
designed for heavy interaction with GitHub. After a few hours of playing around
with this new tool, I am confident that using this new shell, playfully titled
[gitsome](https://github.com/donnemartin/gitsome) (think, "get some," or maybe
that's just me reading in between the lines too much?), really does improve
productivity tremendously. Of course nothing can take the place of
[Bash](https://www.gnu.org/software/bash/) for general use (principally due to
how ubiquitous Bash appears to be), but gitsome, and the underlying shell on
which it is based ([Xonsh](http://xon.sh/)), provides a look at what a modern
shell environment ought to look like...

The Xonsh shell (pun obviously intended), which claims to be a "Python-ish,
BASHwards-looking shell language," includes features which place it at a key
position to unite two of the most used heavily-used languages in current use (at
least in scientific computing). For anyone that spends most of there time at a
terminal-like interface (whether software engineer, web developer, or, in my
case, statistician), two key tools are Bash and Python -- Bash because of its
omnipresence, across various operating systems on both local and remote
machines; and Python for its ease of syntax, utility as a so-called "superglue
language", and advanced support tools for scientific computing (the wildly
popular modules [Numpy](http://www.numpy.org/) and
[scikit-learn](http://scikit-learn.org/stable/) come to mind). Providing support
for Bash and Python simultaneously makes Xonsh amazingly flexible, so it's easy
to imagine that having a foundation like Xonsh gives gitsome quite an advantage
over other shell environments -- I mean, when firing up gitsome gives you access
to support for Bash, Python, and Git/GitHub, what more could you really ask for
in a shell?

Gitsome provides a powerful and automatic shell interface with autocompletion
for common Git commands (including specialized additions for GitHub), while
relying on Xonsh to provide support for both Bash and Pythonic commands. This
means that using gitsome inherently provides full access to a whole suite of
tools, many of which are the cornerstones of the toolbox of a computational
scientist. The look and feel of gitsome can be fully controlled using a
combination of the `bashrc` and `xonshrc` config files (and, unsurprisingly,
modifying a `xonshrc` is very simple, in keeping with its Pythonic origins).
This level of integration means that gitsome will work mostly like your personal
Bash setup (that you know and love) out of the box, with any further additions
you'd like to make being easily mediated through the fully configurable
`xonshrc`. And, as if all of this additional convenient functionality were not
enough, gitsome has a really sleek and shiny look to it...look, just check out
all of the nice visuals on the [gitsome GitHub
page](https://github.com/donnemartin/gitsome)!

Anyway, I think that pretty much concludes what I had to say about gitsome -- in
short, an awesome tool that really encapsulates what a modern shell environment
should look like. There are still a few more tools I want to write about, namely
the [Atom editor](https://atom.io/) and the [Xonsh shell](http://xon.sh/)
mentioned earlier -- so, until next time, cheers.

