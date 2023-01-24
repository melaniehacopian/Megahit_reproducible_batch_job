This directory contains a template script to submit a batch job running megahit on paired-end forward and reverse reads. 
The script asks for 36 CPUS from the computing cluster, with 6 GB memory per cpu. 
Megahit defaults that can be modified with options:

 1. 0.9/1 memory usage from the total memory available.
 2. Minimum kmer coverage of 2.
 
To view options for further modification, use megahit -h after installing. 
