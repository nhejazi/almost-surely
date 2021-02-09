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
title = "Back to Linux: Adventures with the X1 Carbon"
type = "post"
#comments = false
disableComments = false
published = true

+++

Since starting my adventures in statistics and data science (over the last 5
years or so), I've spent nearly all of my working time fiddling with Apple's
macOS -- well, OS X when I started -- machines. After cycling through a couple
Apple machines, I settled on a 2015 "new" (at the time) Macbook, working on
which turned out to be a disaster. (I mean, battery life of ~3 hours,
seriously?) Having grown fed up with this, I just recently decided to go back to
Linux -- and, after some not-so-careful research, I settled on [Lenovo's
6th-generation X1
Carbon](https://www.lenovo.com/us/en/laptops/thinkpad/thinkpad-x/ThinkPad-X1-Carbon-6th-Gen/p/20KH002HUS).
For ease of use, I decided to go with [Ubuntu
18.04](http://releases.ubuntu.com/18.04/) ("Bionic Beaver") on this machine, and
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
procedure is very well documented and described in detail in this blog post
(https://delta-xi.net/#056). Unfortunately, in order to enable the patch
(the `acpi_override` described in the linked post), it must be manually added to
the `boot/grub/grub.cfg` file, which itself gets overwritten every time your
preferred Linux distribution ([Ubuntu](https://www.ubuntu.com/desktop), in my
case) updates the kernel, as this process itself requires re-writing the GRUB
configuration file.

Since Ubuntu 18.04 implements kernel updates rather quickly, I've had to go
through this process ~2 times in the couple months that I've had my X1 Carbon.
It's easy to see that this process might get rather annoying over time.

There's a few other oddities that were initially frustrating when getting the X1
set up, but thanks to the good folks of the
[Arch](https://www.archlinux.org/) community, there's an extremely helpful wiki
page that cover pretty much anything you might feel like tweaking:
https://wiki.archlinux.org/index.php/Lenovo_ThinkPad_X1_Carbon_(Gen_6).

## Configuration/Pricing (vs. Apple)

Here's just a few important configuration details on my customized X1 Carbon:

* Touchscreen: nope
* Display: 14" WQHD (2560 x 1440) IPS anti-glare, 300 nits
* Processor: 8th Generation 8-core Intel Core i7-8550U Processor (1.80GHz, up to
    4.0GHz with Turbo Boost, 8MB Cache)
* Memory: 16GB LPDDR3 2133MHz (Onboard)
* Storage: 512GB Solid State Drive PCIe-NVME OPAL2.0 M.2
* __Price:__ ~$1550 (pre-tax), with frequently available academic discount

The closest thing I could find amongst Apple's products (the new 15-inch
Macbook Pro) offered these specs:

* Touchbar: why? (mandatory for 15-inch)
* Display:15.4-inch (diagonal) LED-backlit display with IPS technology;
    2880-by-1800 native resolution at 220 pixels per inch with support for
    millions of colors; 500 nits brightness
* Processor: 2.6GHz 6-core Intel Core i7, Turbo Boost up to 4.3GHz, with 9MB
    shared L3 cache
* Memory: 16GB of 2400MHz DDR4 onboard memory
* Storage: 512GB SSD
* __Price:__ $2799 (pre-tax)

...All together, escaping the Apple ecosystem and saving ~$1300 is more than
enough compensation for this small amount of tweaking I've had to do to get the
X1 Carbon sufficiently set up.

