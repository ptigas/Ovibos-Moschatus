A couple of years ago, I returned home, a bit drunk, and started
randomly clicking on wikipedia articles. I ended reading about muskox.
My first response was surprise and excitement by it's severe ugliness.
Several years later, during my MSc studies, I attended Computational
Biology and part of this course was to do a project with an animal of
our choice, ask a question about it and answer using data. So, I decided
to choose "muskox" and the question to ask was, "where does all this
unglynens comes from?". The study is a bit technical but the answer very
interesting.

Introduction and Data description
---------------------------------

![image](http://ptigas.com/blog/wp-content/uploads/2012/06/muskox-300x219.jpg "Muskox")

This report investigates the relation of ovibos moschatus (muskox) with
several animals of Bovidae family. Due to morphological similarities
with Budorcas taxicolor (takin) I tested the hypothesis that those two
animals have diverged from a recent common ancestor.Also, I compared
muskox with the sheep and takin to see where is closer to. Finally I
answered the question of where was the primary location of muskox.
Ovibos moscatus is an Artctic mammal which belongs to Bovidae family,
Capricae subfamily. Although it primalry lives in Alaska it may be found
in Sweden, Siberia and Norway. Several studies (including this one)
shows that muskox is closer to sheeps and goats than Budorcas taxicolor
(takin), a Bovidae mammal living in Eastern Himalyas, contradicting with
their morphology (e.g. size). Other animals which compared with muskox
are common sheep, long-tailed goral, Japanese serow and Taiwan serow.
Those animals are located in East Asia, and as we will see, they are the
closest animals to muskox. Finally I compared with Gallus gallus
(chicken) which I used as an outgroup. Figure 1 shows some basic
statistics about mitochondrial DNA of the investigated species. The base
count does not reveal any significant difference among the species,
except for the chicken whch is the outgroup.

  species               | common name        | accession no.  | %A       | %C       | %G    |    %T |       length
  ----------------------| -------------------| --------------- |---------| ---------| --------- |---------| --------
  Ovibos moschatus    |   muskox        |      FJ207536    |    33.3698  | 26.5291  | 13.2554  | 26.7787  | 16431
  Budorcas taxicolor    | takin              | NC\_013069   |   33.8573 |  26.3095 |  12.8577 |  26.9755 |  16667
  Ovis aries            | sheep             |  NC\_001941   |   33.6663 |  25.8125 |  13.1259 |  27.3953 |  16616
  Capricornis crispus   | Japanese serow     | NC\_012096   |   33.7446 |  26.7064 |  13.0067 |  26.5423 |  16453
  Naemorhedus caudatus  | Long-tailed goral  | NC\_013751   |   33.6340 |  25.9580 |  13.1243 |  27.2656 |  16519
  Naemorhedus swinhoei  | Taiwan serow       | NC\_010640   |   33.3999 |  26.6521 |  13.3442 |  26.6037 |  16524
  Gallus gallus        |  chicken           |  NC\_007236   |   30.2472  | 32.4873 |  13.5240 |  23.7414 |  16785

**figure 1.** Data Description

### Data description

All genomes were extracted using NCBI/Genbank database and taxonomy
browser. Proteins also extracted from NCBI website. I used positions
given in NCBI website to extract genes coded in the mitochondrial
genome. Also, I fetched amino acid sequences directly from NCBI
database, instead of translating them. The reason was because there were
nucleotide sequences with errors (missing or unknown values) where in
amino acid sequences were corrected. For reason I will describe later, I
used proteins [Cytochrome B](http://en.wikipedia.org/wiki/Cytochrome_b)
(CTYB) and [Cytochrome C oxidase subunit
1](http://en.wikipedia.org/wiki/Cytochrome_c_oxidase_subunit_I) (COX1) -
commonly used in phylogenetic analyses.

Methods
-------

I compared the nucleotide and amino acid sequences of CYTB and COX1
proteins. I used both sequences because I wanted to measure two
different mutation rates. The non-synonymous (N) substitution rate and
the synonymous (S) substitution rate (The N substitution is mutation in
nucleotide level which result in mutation in amino acid level where S
substitution is the mutation which doesn’t affect amino-acids). One
reason I chose proteins CYTB and COX1 was the fact that are coded in
mitochondrial DNA. Mitochondrial DNA is very useful for studying
evolution since it passes from mother to offspring without
recombination. Thus, proteins coded in mitochondrial DNA have the same
property. What is more, those two proteins mutate with different rates
and different codons in the same protein mutate with different rates,
properties very useful for phylogenetic analysis. **Cytochrome B**
Cytochrome B is known for it’s fast mutation rate and it is very
commonly used in literature for studying evolution even in the same
subfamilies. It contains both slowly and rapidly evolving codon
positions, as well as more conservative and more variable regions or
domains overall. However, many problems have been encountered when using
CYTB, including base compositional biases, rate variation between
lineage, etc [[FOS+01]](#fos01). **Cytochrome C oxidase subunit 1**
Cytochrome C is an essential and ubiquitous protein found in all
organisms, including eukaryotes and bacteria (Voet and Voet 1995, p.
24). It is responsible for tansporting electrons in the fundamental
metabolic process of oxidative phosphorylation. There is no standar
answer of which of the two proteins is better for phylogenetic analysis.
[[TKL09]](#tkl09) suggests that cytohrome b will offer richer
information for mammals, however, I used both proteins so as to compare
the trees produced. **Phylogenetic tree** Neighbor-Joining was used to
generate phylogenetic tree. This choice was due to the assumption that
not all lineages evolve at the same rate ([molecular clock
hypothesis](http://en.wikipedia.org/wiki/Molecular_clock)). Although
this method might not give us the correct tree, given data of sufficient
length, neighbor-joining will reconstruct the true tree with high
probability. Also, so as to simplify our experiment, distances were
calculated using maximum likelihood estimation (Jukes-Cantor) which
assigns equal probability to every possible change of state for a given
nucleotide base or amino acid. **BLAST** The introduction of NCBI’s
[BLAST](http://blast.ncbi.nlm.nih.gov/), or The Basic Local Alignment
Search Tool, in 1990 made it easier to rapidly scan huge databases for
overt homologies, or sequence similarity, and to statistically evaluate
the resulting matches. BLAST works by comparing a sequence against the
database of all known sequences to determine likely matches. The BLAST
server compares the user’s sequence with up to a million known sequences
and determines the closest matches ^[3](#fn3)^.

Results
-------

**Analysis of BLAST results** I used BLAST to find similar animals to
muskox and the protein used was Cytochrome B. The animals I found were
[Capra aegagrus (wild goat)](http://en.wikipedia.org/wiki/Wild_goat),
[Capricornis sumatraensis (Sumatran
serow)](http://en.wikipedia.org/wiki/Sumatran_serow), [Capricornis
crispus (Japanese serow)](http://en.wikipedia.org/wiki/Japanese_serow),
[Naemorhedus caudatus (Long-tailed
goral)](http://en.wikipedia.org/wiki/Long-tailed_goral) and [Naemorhedus
swinhoei (Taiwan serow)](http://en.wikipedia.org/wiki/Taiwan_serow). In
figure 3 you can see the phylogenetic tree constructed using
neighbor-joining and maximum likelihood estimation. The phylogenetic
analysis (fig.3) showed that Capra aegagrus (wild goat) was the closest
animal to Ovibos Moschatus (muskox) which seems that diverged from the
same ancestor. Also, as I expected from their names Naemorhedus caudatus
and Naemorhedus swinhoei were forming a group which diverged from
Capricornis sumatraensis. I noticed that the branch height of
Naemorhedus swinhoei is longer than Naemorhedus swinhoei’s which reveals
that Naemorhedus caudatus evolved more after its diversion from
Naemorhedus swinhoei. Finally, I observed that Naemorhedus and
Capricornis sumatraensis is closely related to Capricornis crispus.

                         Ovibos moschatus   Budorcas taxicolor   Ovis aries   Capricornis crispus   Naemorhedus caudatus   Naemorhedus swinhoei   Gallus gallus
  ---------------------- ------------------ -------------------- ------------ --------------------- ---------------------- ---------------------- ---------------
  Ovibos moschatus       0                  0.0597               0.0541       0.0240                0.0486                 0.0240                 0.3191
  Budorcas taxicolor     0.0137             0                    0.0739       0.0569                0.0710                 0.0625                 0.3154
  Ovis aries             0.0058             0.0078               0            0.0514                0.0597                 0.0486                 0.3377
  Capricornis crispus    0.0058             0.0137               0.0078       0                     0.0431                 0.0159                 0.3118
  Naemorhedus caudatus   0.0098             0.0137               0.0078       0.0078                0                      0.0376                 0.3377
  Naemorhedus swinhoei   0.0039             0.0117               0.0058       0.0019                0.0058                 0                      0.3191
  Gallus gallus          0.1243             0.1243               0.1199       0.1243                0.1265                 0.1221                 0

**figure 2.** seqpdist with jukes-cantor. Above diagonal is for CYTB and
below diagonal is for COXI

![image](http://ptigas.com/blog/wp-content/uploads/2012/06/phytree.png "phytree")

**figure 3.** CYTB phylogenetic tree (AA) for the BLASTed animals
[phytree]

                         Ovibos moschatus   Budorcas taxicolor   Ovis aries   Capricornis crispus   Naemorhedus caudatus   Naemorhedus swinhoei   Gallus gallus
  ---------------------- ------------------ -------------------- ------------ --------------------- ---------------------- ---------------------- ---------------
  Ovibos moschatus       0.00               12.54                12.98        7.89                  9.65                   8.60                   8.60
  Budorcas taxicolor     11.00              0.00                 12.89        12.46                 13.16                  12.98                  12.98
  Ovis aries             10.23              10.36                0.00         11.32                 13.25                  11.67                  11.67
  Capricornis crispus    8.09               10.10                10.49        0.00                  8.68                   5.96                   5.96
  Naemorhedus caudatus   8.67               9.45                 9.64         6.80                  0.00                   9.47                   9.47
  Naemorhedus swinhoei   8.03               10.16                10.68        3.56                  7.18                   0.00                   0.00
  Gallus gallus          22.05              23.15                22.57        21.60                 22.95                  22.31                  22.31

**figure 4.** local alignment % score for each pair (nucleotide
sequences)- Above diagonal is for CYTB and below diagonal is for COXI

                            Ovibos moschatus   Budorcas taxicolor   Ovis aries   Capricornis crispus   Naemorhedus caudatus   Naemorhedus swinhoei   Gallus gallus
  ------------------------- ------------------ -------------------- ------------ --------------------- ---------------------- ---------------------- ---------------
  Ovibos moschatus          0.00               6.15                 5.56         2.43                  4.97                   2.43                   2.43
  Budorcas taxicolor        1.38               0.00                 7.65         5.85                  7.34                   6.44                   6.44
  Ovis aries                0.59               0.78                 0.00         5.26                  6.15                   4.97                   4.97
  Capricornis crispus       0.59               1.38                 0.78         0.00                  4.40                   1.60                   1.60
  Naemorhedus caudatus      0.98               1.38                 0.78         0.78                  0.00                   3.83                   3.83
  Naemorhedus swinhoei      0.39               1.18                 0.59         0.19                  0.59                   0.00                   0.00
  Gallus gallus (chicken)   13.25              13.25                12.75        13.25                 13.50                  13.00                  13.00

**figure 5.** local alignment % score for each pair (amino acid
sequences)- Above diagonal is for CYTB and below diagonal is for COXI

                         Ovibos moschatus   Budorcas taxicolor   Ovis aries   Capricornis crispus   Naemorhedus caudatus   Naemorhedus swinhoei   Gallus gallus
  ---------------------- ------------------ -------------------- ------------ --------------------- ---------------------- ---------------------- ---------------
  Ovibos moschatus       0                  143                  148          90                    110                    98                     98
  Budorcas taxicolor     170                0                    147          142                   150                    148                    148
  Ovis aries             158                160                  0            129                   151                    133                    133
  Capricornis crispus    125                156                  162          0                     99                     68                     68
  Naemorhedus caudatus   134                146                  149          105                   0                      108                    108
  Naemorhedus swinhoei   124                157                  165          55                    111                    0                      0
  Gallus gallus          342                359                  350          335                   356                    346                    346

**figure 6.** number of polymorphic sites per pair - Above diagonal is
for CYTB and below diagonal is for COXI

[![image](http://ptigas.com/blog/wp-content/uploads/2012/06/cytob.png "cytob")](http://ptigas.com/blog/wp-content/uploads/2012/06/cytob.png)

**figure 7.** phylogenetic tree based on cytochrome b

[![image](http://ptigas.com/blog/wp-content/uploads/2012/06/cytoc1.png "cytoc")](http://ptigas.com/blog/wp-content/uploads/2012/06/cytoc1.png)

**figure 8.** phylogenetic tree based on Cytochrome C oxidase subunit 1

[![image](http://ptigas.com/blog/wp-content/uploads/2012/06/AANT.png "AANT")](http://ptigas.com/blog/wp-content/uploads/2012/06/AANT.png)

**figure 9.** AA and NT consensus phylogenetic trees

**Phylogenetic analysis** In my analysis I used CYTB and COX1 proteins
which I selected them for their fast evolution rate. I noticed that
amino acid and nucleotide phologenetic trees had slightly different
results. This is justified by the fact that mutations happening in
nucleotide level are faster that those in amino acid level (N
substitutions and S substitutions ^[4](#fn4)^). One way to explain this
is that there are more than one nucleotide codons which are translated
to the same amino acid. Thus, nucleotide mutations doesn’t always result
in amino acid mutations. What is more I found that there were
differences between CYTB and COX1 phylogenetic trees. That was because
those proteins evolve in different rates. As you can see in figure 8,
number of polymorphic sites in COX1 are greater on average than in CYTB,
which shows that COX1 evolves faster than CYTB in our animals. Since
there were several small differences between CYTB(AA) COX1(AA) CYTB(NT)
COX1(NT) phylogenetic trees, I constructed consensus trees; one for
amino acids and another for nucleotides (figure 9). The reason for that
was because I wanted to summarise the results from different proteins.
As you can see, the consensus trees doesn’t agree for the evolution of
Ovibos moschatus and Naemorhedus caudatus. That might be explained by
the different rate of nucleotide mutations. However, both trees clearly
shows that muskox and Ovis aries (common sheep) diverged from a recent
ancestor, both diverged from Budorcas taxicolor (takin), a result that
contradicts with our hypothesis that takin is closer to muskox than the
ship. Finally, we notice that takin is closer to sheep making them more
related than sheep and muskox. Similar results can be found in
literature [[GS97]](#gs97). **Polymorphic sites** As you can see in
figure 5 and figure 6 there are some interesting observations. I local
aligned each pair of CYTB and COX1 nt sequences. In figure 6 you can see
the number of polymorphic sites per pair. The number of polymorphic
sites in COX1 is greater for all pairs compared to CYTB. However, after
comparing the percentage of polymorphic sites I noticed that COX1
percentages are smaller than CYTB for each pair. Also, similar results
can be observed in amino acid sequences alignment which means that the
substitution happening are mainly non-synonymous. This shows that in the
animals of our family of interest, CYTB protein mutates in higher rate
than COX1 and thus CYTB is more appropriate for phylogenetic analysis.

Conclusions
-----------

As you can see, appearance and morphology of species doesn’t show the
correct evolution history. Also, statistics of the sequence (percentage
of the base) doesn’t contain much information. As I observed that
comparing proteins in both amino acid and nucleotide level is more
appropriate method for investigating species relations. In my report I
showed that ovibos moschatus, although very similar to the takin, is
closer to ships. Similar results could be found in in [[GS96]](#gs96).
They showed that muskox and takin appearance similarity was due to
convergence evolution ^[5](#fn5)^, during which appearance similarities
arise among species although they have diverged from different
ancestors. Also, we asked about the area of origin of muskox. BLAST
results of cytochrome B protein showed that animals from central Asia
were the most closely related which is an indication that the area of
origin was there. In literature there are studies which shows that the
earliest ancestors of the modern muskox evolved in southern central Asia
during the late Miocene, more than ten million years ago. During the
Pleistocene (1.8 million – 11 500 years ago) the muskox spread from Asia
over the northern world [[Len99]](#len99).

* * * * *

1.  [http://en.wikipedia.org/wiki/Bovid](http://en.wikipedia.org/wiki/Bovid)[↩](#fnref1)
2.  [http://en.wikipedia.org/wiki/Molecular\_clock](http://en.wikipedia.org/wiki/Molecular_clock)[↩](#fnref2)
3.  http://www.ncbi.nlm.nih.gov/About/primer/phylo.html[↩](#fnref3)
4.  The N (non-synonymous) substitution is referred to mutations of
    nucleotides which result in mutation of amino acid sequence where S
    (synonymous) substitution is the mutation which doesn’t result in
    aminoacid change.[↩](#fnref4)
5.  [http://en.wikipedia.org/wiki/Convergent\_evolution](http://en.wikipedia.org/wiki/Convergent_evolution)[↩](#fnref5)
6.  I P Farias, G Ortí, I Sampaio, H Schneider, and a Meyer. The
    cytochrome b gene as a phylogenetic marker: the limits of resolution
    for analyzing rela- tionships among cichlid fishes. Journal of
    molecular evolution, 53(2):89–103, August 2001.[↩](#fos01)
7.  Shanan S. Tobe, Andrew Kitchener, and Adrian Linacre. Cytochrome b
    or cytochrome c oxidase subunit I for mammalian species
    identification[↩](#tkl09)
8.  P Groves and G F Shields. Phylogenetics of the Caprinae based on
    cytochrome b sequence. Molecular phylogenetics and evolution,
    5(3):467–76, June 1996.[↩](#gs96)
9.  P Groves and G F Shields. Cytochrome B sequences suggest convergent
    evolution of the Asian takin and Arctic muskox. Molecular
    phylogenetics and evolution, 8(3):363–74, December 1997.[↩](#gs97)
10. P.C. Lent. Muskoxen and their hunters: A history. Univ of Oklahoma
    Pr, 1999.[↩](#len99)
