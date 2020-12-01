#!/bin/bash
#SBATCH -n 2              # Number of cores (-n)
#SBATCH -N 1                # Ensure that all cores are on one Node (-N)
#SBATCH -t 0-5:00          # Runtime in D-HH:MM, minimum of 10 minutes
#SBATCH -p tambe_gpu     # Partition to submit to
#SBATCH --mem=5000           # Memory pool for all cores (see also --mem-per-cpu)
#SBATCH -o output/%j.out  # File to which STDOUT will be written, %j inserts jobid
#SBATCH --gres=gpu:1

# python rl4im.py --cascade 'DIC' --eps_decay True --eps_wstart 0.3 --propagate_p 0.3 --q 0.5 --use_cuda 1 --batch_size 128 
# python rl4im.py --cascade 'DIC' --eps_decay True --eps_wstart 0.3 --propagate_p 0.1 --q 1 --use_cuda 1 --batch_size 128 
# python rl4im.py --cascade 'DIC' --eps_decay True --eps_wstart 0 --propagate_p 0.3 --q 0.5 --use_cuda 1 --batch_size 128 
# python rl4im.py --cascade 'DIC' --eps_decay True --eps_wstart 0.2 --propagate_p 0.3 --q 0.5 --use_cuda 1 --batch_size 128
# python rl4im.py --cascade 'DIC' --eps_decay True --eps_wstart 0.3 --propagate_p 0.3 --q 1 --use_cuda 1 --batch_size 128
# python rl4im.py --cascade 'DIC' --eps_decay True --eps_wstart 0.3 --propagate_p 0.3 --q 0.5 --use_cuda 1 --batch_size 128
# python rl4im.py --cascade 'DIC' --eps_decay False --eps_wstart 0.3 --propagate_p 0.3 --q 0.5 --use_cuda 1 --batch_size 128

# Nov-30 Mon 3pm 
#python rl4im.py --graph_index 3 --cascade 'DIC' --eps_decay 1 --eps_wstart 0.3 --propagate_p 0.1 --q 1 --use_cuda 1 --batch_size 128 --greedy_sample_size 200 #fails because greedy_sample_size=200

# Nov-30 Mon 8:40pm
#python rl4im.py --graph_index 3 --cascade 'DIC' --eps_decay 1 --eps_wstart 0.3 --propagate_p 0.1 --q 1 --use_cuda 1 --batch_size 128 --greedy_sample_size 100 ############works well after changing 200 to 100
#python rl4im.py --graph_index 3 --cascade 'DIC' --eps_decay 1 --eps_wstart 0.3 --propagate_p 0.1 --q 1 --use_cuda 1 --batch_size 256 --greedy_sample_size 100

# Nov 30 11:26pm
#python rl4im.py --graph_index 2 --cascade 'LT' --eps_decay 1 --eps_wstart 0.3 --propagate_p 0.1 --q 1 --use_cuda 1 --batch_size 128 --greedy_sample_size 100
#python rl4im.py --graph_index 2 --cascade 'LT' --eps_decay 1 --eps_wstart 0.3 --propagate_p 0.1 --q 1 --use_cuda 1 --batch_size 128 --greedy_sample_size 500
python rl4im.py --graph_index 2 --cascade 'SC' --eps_decay 1 --eps_wstart 0.3 --q 1 --use_cuda 1 --batch_size 128 --greedy_sample_size 100


