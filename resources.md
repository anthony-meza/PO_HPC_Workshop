# Resources to help you get the most out of Poseidon/scientific computing

### [Tmux](https://hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/) (short for terminal multiplexer)
- A program that lets you run terminal processes in the background and toggle between different terminal sessions. Some useful commands:
  - `tmux new -s session_name` - create a new tmux session
  - <kbd>Ctrl</kbd> <kbd>B</kbd> + <kbd>D</kbd> - detach from a session while letting it run in the background!
  - `tmux ls - see all sessions` you have currently running
  - `tmux a -t session_name` - reattach to a previous session
 
### Basic slurm commands
- `sbatch scriptname.sh` submits your batch script to the slurm scheduler
- `mj` shows you all your jobs, including those waiting in the queue
- `squeue -al` shows you all jobs currently in the queue
- `scancel jobid` will cancel your job by jobid
- `srun -p compute --pty bash` will initialize an interactive job on the command line. This is good for downloading datasets, testing code, installing big packages, and running all those commands you would normally run on the log-in node :o

### Useful links
#### HPC
- [WHOI's HPC page](https://hpc.whoi.edu)
- [MIT provides several different computing clusters](https://christophernhill.github.io/mitrc/)
- [Useful terminology](https://hpcc.umd.edu/hpcc/help/glossary.html)
- [Globus is a file-transfer that's great for big data; WHOI and MIT both offer free institutional accounts](https://www.globus.org)
- [15 quick tips for success w/ HPC](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8341507/)
- [Use an SSH key to log into Poseidon instead of entering your password every time](https://hpc-wiki.info/hpc/Ssh_keys)

#### Xarray and Dask
- **Online course notes**
  - [Earth and Environmental Data Science course resources, including example code](https://earth-env-data-science.github.io/intro.html)
  - [eScience Tools in Climate Science course resources, with lots of examples on how to read in different cloud-based datasets](https://nordicesmhub.github.io/forces-2021/intro.html)
- **"Cookbooks"**
- [COSIMA provides "recipes" to analyze ocean-sea ice model output that could be adapted for a range of different datasets](https://cosima-recipes.readthedocs.io/en/latest/recipes.html)
- [Project Pythia also allows user-submitted "cookbooks" with example workflows for specific earth science problems](https://cookbooks.projectpythia.org/)
  
