# ## This script performs an end to end test on haploclique project. The test input data reads_HIV-1_50_01.bam is a simulated dataset generated from HIV-1 reference sequence using Simseq simulator. The expected output is presented in quasispecies_HIV-1_50_circleci.fasta.fasta and is compared to actual output quasispecies.fasta.fasta.

$ $__HC_EXE --edge_quasi_cutoff_cliques=0.85 --edge_quasi_cutoff_mixed=0.85 --edge_quasi_cutoff_single=0.8 --min_overlap_cliques=0.6 --min_overlap_single=0.5 --no_singletons --significance=4 $TESTDIR/../data/simulation/reads_HIV-1_50_01.bam > /dev/null;
$ diff quasispecies.fasta.fasta ${TESTDIR}/../data/simulation/quasispecies_HIV-1_50_weakParam_circleci.fasta.fasta