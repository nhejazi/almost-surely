+++
date = "2016-02-24"
author = "Nima Hejazi"
title = "drunk driving with spreadsheets"
summary = ""
categories = [ "not so standard deviations", "data science", "spreadsheets" ]
comments = true

+++

Recently, while listening to an episode of the podcast
["Not So Standard Deviations"](https://soundcloud.com/nssd-podcast), by Roger
Peng and Hilary Parker, the line "Doing data analysis with spreadsheets is like 
driving drunk" (attributed to statistician Philip Stark) stood out to me. This
short phrase gets at the very notion of how very irresponsible the use of
spreadsheets is for many of the routine tasks of data science. That is,
spreadsheets provide a high level of accessibility to the data that is so
central to the insights extracted by data scientists -- and, it is this high
level of control over the data itself that makes their use so very dangerous.
Given that the role of data scientists (and applied statisticians) most often is
to extract insights from a data set -- insights that may obviously be easily
manipulated by (incidental) changes to the data itself -- manual manipulation of
data seems quite irresponsible. In stark contrast to the manipulative power
provided by spreadsheets, typical data structures used in scientific computing
(for example the _dataframe_ used in R, and Python's _pandas_) make the
summarization and modeling of data easier, at the expense of hindering
manipulation of the data set itself.

After opening a data set in spreadsheet software, it takes just a single click
to edit the raw data itself; however, after loading a data set into a structure 
like a _dataframe_, making purposeful changes to the raw data often requires a
set of commands that would be quite difficult to execute in error. By making the
data inaccessible via mere clicks, the _dataframe_ structure provides a level of
removal from the raw data that minimizes potential incidental changes to the
information that is to be analyzed. In the same manner in which drunk driving
inhibits motor skills, increasing potential for incidental, damaging
consequences, the overeager use of spreadsheets brings the data scientist simply
too close to introducing errors into the raw data. It clearly follows that, in
an age of computationally reproducible research, the use of spreadsheets is
indeed quite irresponsible when the goal of data science is the extraction of
insight from information -- that is, the use of spreadsheets may often lead the 
vulnerable data scientist off of the road to valid insights.

**_last updated: 22 March 2016_**

