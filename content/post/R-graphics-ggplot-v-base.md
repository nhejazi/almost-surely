+++
date = "2016-05-02"
author = "Nima Hejazi"
title = "R graphics - ggplot versus base"
summary = ""
categories = [ "ggplot2", "base graphics", "not so standard deviations" ]
comments = true

+++

In the past several weeks, something of a debate has emerged regarding whether,
in fact, there is a superior plotting system in R. First, a bit of history. The
arguments on plotting all began with an off-hand comment about the plotting
preferences of statistician and JHU Professor [Jeff Leek](http://jtleek.com/),
on the ["Not So Standard Deviations"](https://soundcloud.com/nssd-podcast)
podcast of [Hilary Parker](https://twitter.com/hspter/) and [Roger
Peng](http://www.biostat.jhsph.edu/~rpeng/). The comment, as I remember it, had
to do with why anyone would ever bother to use _base graphics_ in R when a tool
like `ggplot2` exists.

In response to this, Jeff Leek provided a [blog
post](http://simplystatistics.org/2016/02/11/why-i-dont-use-ggplot2/) about the
advantages and relative utility of base graphics; many others have made posts
expressing their views on the ggplot2 vs. base graphics debate. One such post
[argues the other side](http://varianceexplained.org/r/why-I-use-ggplot2/).

I happen to think that `ggplot2` is a fantastic tool, which incorporates a
number of benefits that were ignored in Jeff Leek's post. Here are a few
responses loosely organized around the main points from his blog post.

#### I - Exploratory graphs

The main point defending base graphics here simply seems to be that exploratory
graphics need not be pretty. While technically true, this point ignores the many
benefits that emerge when exploratory visualizations _actually are pretty_. For
one, when making scatterplots, histograms, and other such visualizations, it
helps to share these with collaborators; and, while base graphics can generate
decent looking plots quickly, the graphs themselves are far surpassed in quality
by those created by `ggplot2`. What's more, the code generating base plots is
unintelligible; by contrast, comparable `ggplot2` code is nearly human-readable.
This clarity of syntax means that plots made with `ggplot2` can be easily
modified upon requests by collaborators, shared with students, and even easily
dissected at later times when the intricacies of using base graphics have long
been forgotten. The bit on teaching leads nicely to a rebuttal of Jeff Leek's
point on grading the work of students in data science courses.

#### II - Teaching / Grading students

In regard to teaching students how to properly do data science, the point made
in Jeff's post seems to be that `ggplot2` in effect makes plotting _too easy_.
While having to think about how to generate a plot may be useful when creating
very complex plots -- the syntax of base graphics necessitates thinking -- this
alone by no means makes base graphics better suited to teaching students. Often,
students learning the principles of applied statistics and data science for the
first time would benefit far more from thinking critically about _why_ a
particular plot is useful in communicating an important finding, as opposed to
struggling with some of the terrible syntax that one runs into when using base
graphics. _Teaching students to think critically and develop good habits for
scientific communication_ is much more important than having them struggle with
complex syntax for generating elementary plots. As far as teaching goes, the use
of base graphics is, without a doubt, a __bad practice__, and this is
exacerbated when teaching students at a beginner level (how many students new
to statistics and programming want to learn that base's `cex` parameter scales
text on a plot?).

#### III - Literate programming

We now live in an era of science where openness and reproducibility are highly
valued, and rightly so. Sharing not only data but the code used to build models
and visualizations is an important part of working in science. This ideal is not
well served by the use of tools whose properties run in contrast to the
requirements of accessibility. Base graphics and comparable systems in other
languages (e.g., basically anything done in `MATLAB`) have challenging syntax
(to put it nicely), which makes sharing code challenging. What's more, writing
code is often a very subjective process -- that is, it is hard to share code
between individuals, often simply because of stylistic differences -- and
systems that make sharing code easier ought to be highly valued, if truly open
science is ever to stand a chance. The `ggplot2` system is an implementation of
the [grammar of graphics](http://vita.had.co.nz/papers/layered-grammar.html),
which attempts to unpack the components of a visualization in a sensible manner.
This means that using `ggplot2` generates code that is not only human readable,
but can be dissected for the purposes of teaching and explaining methods to
collaborators not well-versed in computational science. As far as visualization
of data is concerned, `ggplot2` is an important addition to the toolbox of a
computational scientist aiming to follow the ideals of open and reproducible
science. In fact, aiming to build accessible work puts the use of base graphics
squarely in the realm of _worst practices_, and [worst practices should be
hard](http://www.haskellforall.com/2016/04/worst-practices-should-be-hard.html)
(which, to its credit, the base graphics system certainly is).

Anyway, cheers for now – I think I mostly covered everything I had hoped to talk
about from Jeff Leek's post, but, really, who knows, there might be a follow-up
post at some point...

**_last updated: 04 May 2016_**
