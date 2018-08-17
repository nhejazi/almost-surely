+++
author = "Nima Hejazi"
categories = [ "computing", "productivity", "open source" ]
tags = [ "computing", "productivity", "open source" ]
date = "2018-08-14"
description = "A review of getting a new 6th-generation X1 Carbon set up with Ubuntu Linux"
featured = ""
featuredalt = ""
featuredpath = ""
linktitle = ""
title = "Back to Linux - Adventures with the X1 Carbon"
type = "post"
#comments = false
disableComments = false
published = false

+++

Since starting my adventures in statistics and data science (over the last 5
years or so), I've spent nearly all of my working time fiddling with Apple's
macOS -- well, OS X when I started -- machines. After cycling through a couple
Apple machines, I settled on a [2015 "new" Macbook](), working on which turned
out to be a disaster. (I mean, battery life of 2 hours, seriously?) Having grown
fed up with this, I just recently decided to go back to Linux -- and, after some
careful research, I settled on [Lenovo's 6th-generation X1 Carbon]. For ease of
use, I decided to go with [Ubuntu 18.04] ("Bionic Beaver") on this machine, and
so began the trouble and pain of turning the X1 Carbon into a Linux box.

As great a programming/computing experience as my X1 Carbon now offers, there
were a few less-than-ideal steps in getting it set up. Here's a few things that
didn't go so great.

## Really, why disable "regular" sleep, Lenovo?

It turns out that in a fit of hopeless modernism, Lenovo decided to axe the
normal S3 sleep state in transitioning between the 5th and 6th generations of
the X1 Carbon. The standard S3 sleep state was removed in favor of a newer sleep
state (that does not actually induce "deep sleep") that works well with modern
Windows system. It's too bad not everyone wants to run Windows on the quality
hardware that Lenovo's producing with the X1 Carbon...

Thankfully, the great folks of the Arch community have put together a patch that
can be applied to the X1 Carbon to restore the standard S3 sleep state. The
procedure is very well documented and described in detail
[here](https://delta-xi.net/#056). Unfortunately, in order to enable the patch
(the `acpi_override` described in the linked post), it must be manually added to
the `boot/grub/grub.cfg` file, which itself gets overwritten every time your
preferred Linux distribution ([Ubuntu](https://www.ubuntu.com/desktop), in my
case) updates the kernel, as this process itself requires re-writing the GRUB
configuration file.

Since Ubuntu 18.04 implements kernel updates rather quickly, I've had to go
through this process ~2 times in the couple months that I've had my X1 Carbon.
It's easy to see that this process might get rather annoying over time.

https://wiki.archlinux.org/index.php/Lenovo_ThinkPad_X1_Carbon_(Gen_6)


## Configuration and Pricing (vs. Apple hardware)

Here's just a few important configuration details on my customized X1 Carbon:

* ...
* ...
* ...
* __Price:__ $$

The closest thing I could find amongst Apple's products offered these specs:

* ...
* ...
* ...
* __Price:__ $$$


