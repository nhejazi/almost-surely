+++
author = "Nima Hejazi"
categories = [ "tools", "productivity", "computing" ]
date = "2016-05-06"
description = "Discussion of the new minimal text editor, Neovim"
featured = ""
featuredalt = ""
featuredpath = ""
linktitle = ""
title = "How to love a tool - Neovim"
type = "post"
comments = true
published = true

+++

Recently, I decided to look for new tools to improve my work efficiency, and
very early in the endeavor to find new and better tools, I came across the
fairly recent [Neovim](https://neovim.io) project. The aim of Neovim is to
accomplish a full re-factoring of the source code of [Vim](http://www.vim.org/),
one of the oldest and most popular extensible text editors; this is sort of a
big deal because Vim has historically been maintained only by its creator Bram
Moolenaar, and not every change made to Vim has been done in a forward-thinking
manner. Without going too much into why Vim -- and similar tools like
[Emacs](https://www.gnu.org/software/emacs/) and GitHub's much newer
[Atom](https://atom.io/) -- are so great, I just wanted to talk about a few of
the features of Neovim, and why I would recommend anyone currently using Vim to
at least give it a try.

Now, I've only been using Vim for about a year (and my adoption of Vim was
mostly motivated by a desire to work easily remotely), but in that relatively
short period (that is, some people have been using Vim for ~30 years), a few
problems became apparent to me. The three major problems I ran into were, in
reverse order of importance, (3) The lack of a nice GUI can make Vim hard to use
at times which, (2) It can be quite difficult to set up a productive customized
Vim of your own, and (1) Using Vim makes learning other tools like `tmux`
necessary if you want a productive and flexible work environment.

These problems made my use of Vim inconsistent and less productive than it could
have been -- but, once I moved over to Neovim, nearly all of these problems were
solved, in part because I adopted a few new Vim packages along the way.

#### Problem 3: Vim doesn't have a nice UI (unlike Sublime and Atom)

Right, Vim doesn't have a nice, futuristic looking layout...but, does this
really matter all that much? I made extensive use of the Atom editor (and still
really enjoy using it), but I discovered that the consistency offered by using
Neovim really makes up for this. What I mean here is that, while I can use tools
like Atom (with its really nice and shiny UI) on both my MacBook and Chromebook
(after setting up Linux on the latter), I can't make easy use of Atom when
working remotely via `ssh`. While I'm sure there are solutions to this, the one
easiest to implement was to simply adopt Neovim as my main tool, and, really,
some of the Vim packages out there make me question why I bother to use other
tools entirely...

#### Problem 2: setting up a productive Vim environment is hard

There are some great packages managers written for use with Vim out there. When
I was still using Vim, I used
[`pathogen`](https://github.com/tpope/vim-pathogen), since it is well known and
relatively easy to use. When I switched to Neovim, I started using the newer
[`vim-plug`](https://github.com/junegunn/vim-plug), which is an awesome, if
minimalist, manager for Vim plugins. `vim-plug` lets you easily install, update,
and remove packages without dealing with keeping them as git submodules, which
you would have to do if using Git with your Vim `pathogen` setup (you should of
course use Git, though git submodules can be a pain to learn). After adopting
this new plugin manager, a number of really cools tools can be easily added to
your Neovim setup -- a couple of my favorites are
[`vim-airline`](https://github.com/vim-airline/vim-airline) and
[`ctrlp.vim`](https://github.com/ctrlpvim/ctrlp.vim).

#### Problem 1: a productive Vim environment requires `tmux`

...not with Neovim. In fact, one of the main features that drew me to Neovim in
the first place was that it comes with a full terminal emulator implementation
built in. This fact alone, and how easy it is to set up a tools for having a
multiplexed setup, makes Neovim an easy choice over Vim. The fact that there is
a built-in terminal emulator that is easily modifiable means that numerous tools
can be built on top of this (one of these being the really cool
[`Nvim-R`](https://github.com/jalvesaq/Nvim-R), which lets you generate
interactive R sessions linked to Neovim editor buffers). What's more, this whole
setup does not require learning how to use tools other than Neovim (as I've
mentioned, doing this with Vim would require using the incredibly painful
`tmux`). As an added bonus, after setting up a working Neovim configuration, I
have been able to use exactly the same tool on OSX, Linux Ubuntu, and various
remote hosts that I routinely work on (and I think it should work mostly the
same on any UNIX environment).

Anyway, my main point here is just that __Neovim is awesome__, and if you
haven't given it a try, you owe it to yourself to at least experiment with it.
Here, look, [my entire Neovim setup](https://github.com/nhejazi/myneovimconfig)
is basically just two scripts!

Maybe I'll make a series of posts about the tools I've been switching over to,
but, for now, I think that's basically all I wanted to say here, so, cheers.

