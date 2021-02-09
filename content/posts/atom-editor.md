+++
author = "Nima Hejazi"
categories = [ "tools", "productivity", "computing" ]
tags = [ "tools", "productivity", "computing" ]
date = "2016-05-25"
description = "Thoughts on GitHub's modern text editor, Atom"
featured = ""
featuredalt = ""
featuredpath = ""
linktitle = ""
title = "Yet another text editor? Atom"
type = "post"
#comments = true
disableComments = false
published = true

+++

As part of the series of posts on computational tools that I have grown to love 
("How to Love a Tool..."), here, I am going to talk about the [Atom text
editor](https://atom.io/), developed rather recently by GitHub. Unlike the other
text editor I discussed in this series of blog posts - the awesome and minimal
[Neovim](https://neovim.io/) - Atom is designed to be "a hackable text editor
for the 21st Century," built mostly on web-based technologies (e.g.,
[Chromium](https://en.wikipedia.org/wiki/Chromium_(web_browser))), and making
heavy use of [CoffeeScript](http://coffeescript.org/). Unlike the older but
similar [Sublime text editor](https://www.sublimetext.com/), Atom is built to
support community-driven plugin development, using GitHub as its main package
repository (coupled with the accessible CoffeeScript language), whereas Sublime
is maintained by a small core group, the size of which naturally leads to lags
in core development. By lowering various barriers to development and
accessibility, Atom provides a development environment that can grow (and has
grown) at an incredible rate.

In comparison to editors like Neovim, Atom provides numerous resources that make
working on projects easier: high-level plugin management through both the GUI
and the command line (the latter using Atom's `apm`, based on Node's `npm`), a
sleek user interface in keeping with its mission to be a 21st Century editor,
support for most popular keybindings (including
[Vim](https://atom.io/packages/vim-mode) and
[Emacs](https://atom.io/packages/atomic-emacs)), support for language-centric
GUI development (e.g., [the Juno IDE for Julia](http://junolab.org/)),
[nearly instantaneous code evaluation via Jupyter
kernels](https://atom.io/packages/hydrogen), ... and the list goes on and on.
Just the handful of features mentioned above provide a compelling reason to at
least take Atom for a test drive. And, honestly, Atom comes about as close as
modern text editors have ever come to the customizability offered by
[Vim](http://www.vim.org/), while providing accessible package development and a
sufficiently large community. Yet another pro might be that Atom's friendly UI
won't strike fear into the hearts of beginners in the way that Vim does, making
it great for teaching (and, of course, lightweight use) too.

In the comparatively short period of time that Atom has been around, at least
relative to Vim and Emacs, it has succeeded in building a strong (and growing)
community, providing a sleek UI, and, perhaps most importantly, setting up an
accessible plugin ecosystem that makes package development exceptionally easy.

Having pointed out all of this cool stuff about Atom, I should probably admit
that this whole post was written comfortably via Neovim. Oh well, at least I
didn't recommend Atom for everything I guess...

