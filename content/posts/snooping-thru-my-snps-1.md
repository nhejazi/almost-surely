+++
author = "Nima Hejazi"
categories = [ "genomics", "23andMe", "R", "quantified self" ]
date = "2016-03-22"
description = "Exploratory analysis of my SNP profile"
featured = ""
featuredalt = ""
featuredpath = ""
linktitle = ""
title = "Snooping through my SNPs, part 1"
type = "post"
comments = true
published = true

+++

In recent years, the growing trend of personal genomics has spawned its own
industry, with several companies now offering to sequence the genomes of
individuals, with some even providing health analytics and ancestry information.
A couple years ago, I sent a sample of my own DNA (via saliva) to 23andMe, Inc.;
this sample was then used to perform sequencing on single nucleotide
polymorphisms (SNPs) in my genome -- and to provide me with a wealth of
information about potential disease risks and ancestry.

Conveniently, 23andMe also allows data to be downloaded in the form of a text
file containing the identity of nucleotides at various SNPs, along with their
positions across the genome. It turns out that this data can be rather easily
explored with a little help from [R](https://www.r-project.org/) and
[Bioconductor](https://www.bioconductor.org/). What's more, 23andMe claims to
have data reproducibility of over 99% for their genotyping platforms, adding a
high degree of reliability to trends discovered from this data.

In the exploratory analysis that I performed on my own SNP data, I produced two
visualizations of my genome (as well as a reference visualization based on
public data) -- all of these were aimed at performing a first-pass exploratory
examination of the data...perhaps I'll have a chance to perform a more thorough 
analysis soon (hopefully, no more than a few months time).

To start, I merely read in the text file, organized the SNPs by chromosome, and
(using `ggplot2`) produced a histogram of the distribution of SNPs across the
chromosomes (plus those occurring in mitochondrial DNA):

<img src="../../img/main/snp_distribution.jpg"
alt="Distribution of single nucleotide polymorphisms across the genome" width="700" height="700">

The plot above is actually rather uninformative. As it turns out, the number of
SNPs is mostly a function of the length (base pairs) of a chromosome, so
understandably, those chromosomes with more SNPs are just longer.

To go further in the analysis, I made heavy use of the packages `gwascat` and
`ggbio`. With the former, it was possible to merge data from my SNPs with
information included in the `gwrngs19` data set, which represents aggregated
information from numerous genome-wide association studies (GWAS). Merging these
two data sets, and then filtering the results by the allele risk values reported
in GWAS studies, allowed me to find those alleles that put me at risk for a
number of conditions, based on the current biomedical literature.

To visualize these results, I created karyotype-based visualizations of the
distribution of my so-called "at risk" alleles across various chromosomes.

To investigate potential "at risk" regions in my genome further, I used the data
`gwrngs19` and my imported SNPs to produce a joint _data.frame_ containing my
genotype (that is, those SNPs in the genome corresponding to those contained in
my data set). This _data.frame_ was then filtered to mark alleles falling in the
"at risk" category (those more highly associated with certain disorders in the
GWAS data available). The plot generated from examining these regions is
displayed below:

<img src="../../img/main/risk_karyotype.jpg"
alt="a rough karyotype comparing my alleles to GWAS data"  width="700" height="700">

Across all alleles available in public GWAS data, those alleles found in my data
set are marked on each chromosomes, with those alleles associated with a higher 
risk of a given disorder marked in _light blue_ (and those alleles not
associated with a significant risk marked in _light red_).

While the above represents a rough attempt at exploratory analysis of my SNPs, a
number of avenues exist for going further (a few of which I hope to later
examine and write about). My very quick analysis also led me to realize that
despite the large number of personal genomics services, tools for analyzing this
data personally appear limited, though a working knowledge of R seems to solve
this problem...and I imagine much of the same may be accomplished using similar 
bioinformatics tools (Python's _Biopython_ and Julia's _BioJulia_ projects both 
come to mind).

Much of the analysis described above was better documented in a helpful [blog
post by Vince
Buffalo](http://www.vincebuffalo.com/blog/2012/03/12/using-bioconductor-to-analyze-your-23andme-data.html).

The scripts that I built are quite easily adaptable (feel free to use them), and
[available on GitHub here](https://github.com/nhejazi/23-and-i).

