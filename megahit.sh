#!/bin/bash -l

#SBATCH --job-name=megahit          ## Name of the job.
#SBATCH  -A <account>                        ## Account to charge
#SBATCH -p standard                 ## Partition/queue name
#SBATCH --cpus-per-task=36           ## number of cpus
#SBATCH --mem-per-cpu=6G           ## memory per cpu
#SBATCH --mail-user= <your email>    ## Be notified by email when your job starts, ends or is killed.
#SBATCH --mail-type=ALL
#SBATCH --time=10-00:00:00          ##Specify desired time limit
#SBATCH -o myoutput_%j.out          ## File to which STDOUT will be written, %j inserts jobid
#SBATCH -e myerrors_%j.err          ## File to which STDERR will be written, %j inserts jobid

conda activate <your_conda_environment>

megahit --num-cpu-threads 36 -1 paired_fwd.fq -2 paired_rev.fq -o megahit_out
