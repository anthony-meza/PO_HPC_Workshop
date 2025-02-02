# WHOI Physical Oceanography Poseidon Workshop
This repository will contain all relevant information related to using parallel and distributed data analysis on the Poseidon @ WHOI (Woods Hole Oceanographic Institution). This repository will specifically go over Dask, xarray and requesting resources on Poseidon and your local machine. 

The workshop will be held on October 3rd, 2024 and will be co-taught by Katy Abbott and Anthony Meza. 

The workshop schedule can be found here: https://docs.google.com/document/d/1vHl_ZYNNWhaYK6h4Y93NFcOhk0zmLGbmzrVpsnM5Zi8/edit?usp=sharing

Our slides can be found here: https://docs.google.com/presentation/d/18fEL94cLxcA-prOxSrREmxWVYxIGuB8MrO2ymTiV2Sc/edit?usp=sharing
### Workshop Overview, Goals and Prerequisites: 

This workshop assumes knowledge of some basic programming concepts including variable declaration, boolean operators, loops, lists, dictionaries, conditionals and functions. This workshop will use **Python**. If you need to brush up on any of these concepts in Python, the WHOI Python Carpentries workshop website is a good place to start. 

The goal of this workshop will be to provide attendees with an introduction to plotting and processing geophysical data stored in tabular (e.g. CSVs) or hierarchical (e.g. NetCDFs) formats. In particular, we will cover: 

- Using Dask for parallel computing
- Leveraging xarray for handling multi-dimensional arrays
- Requesting resources on the Poseidon cluster
- Setting up your local machine for compatibility with Poseidon

### Why Python for distributed competing? 
Python is not the only language that provides distributed computing tools. However, based on our experience Python has the most mature and accessible tools for big data exploration and visualization _in the climate sciences_. Other languages such as MATLAB, Julia, and R offer similar tools to process geospatial data, but none are as complete as those in Python. Many scientific analysis codes are now being written exclusively in Python so we hope that understanding the basic functions that make up these codes will be worthwhile!


# Table of Contents

1. [Installing Miniforge On Poseidon](#installing-miniforge-on-poseidon)
2. [Spinning up a Jupyter notebook ](#running-a-remote-jupyter-notebook)

## Installing Miniforge on Poseidon
We have already created a script for you which installs ``micromamba`` and the packages necessary to participate in the workshop. 
To download the script, log in to Poseidon from Terminal (if using Mac/Linux) or Powershell (Windows)

`
ssh -XY username@poseidon.whoi.edu
`

Once logged in, confirm you are in your home directory 

`cd ~
`

Next, download the Miniforge script

`
wget https://raw.githubusercontent.com/anthony-meza/WHOI-PO-HPC/refs/heads/official_pilot_workshop/poseidon_setup.sh
`

Finally, to initialize the installation type the following command

`
sh poseidon_setup.sh
`

To check whether your installation succesfully run 

`
source ~/.bash_profile
`

`
mamba
`

## Running a remote Jupyter notebook

Running a Jupyter notebook on Poseidon requires you to create an SSH tunnel from Poseidon to your personal computer. Instructions depend on whether you're using Mac/Linux or Windows. Below are instructions for both. 

### On Mac/Linux
To make sure you're able to start a Jupyter notebook from Poseidon and then access the remote server through ssh tunneling, follow these steps:

1. ssh into Poseidon, copy the script `run_jupyter_on_poseidon.sh` to your home directory, change `--mail-user=user@whoi.edu` to your email, and run `sbatch run_jupyter_on_poseidon.sh` on the command line
2. Check the output from this script, which is piped to `log-jupyter-{jobid}.log`. You can check the job ID by running `mj` (short for my job) to see what jobs of yours are in the queue. Any errors will also be sent to this log.
3. Copy the line that has a format like `ssh -N -f -L remote-port:remote server:remote-port user@poseidon.whoi.edu`, which show the port the server is running on, and the node it is using on Poseidon. Paste it into a new terminal window on your local machine and run. (See [this screenshot](https://github.com/anthony-meza/WHOI-PO-HPC/blob/official_pilot_workshop/figures/jupyter_screenshot.jpg) for more details.)
4. Locate the url in the file `log-jupyter-{jobid}.log` that begins with ``http://127.0.0.1:remote-port....``. Copy this url and paste it into a browser and your notebook should pop up!

### On Windows 
1. Download and install [Putty](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)
1. ssh into Poseidon, copy the script `run_jupyter_on_poseidon.sh` to your home directory, change `--mail-user=user@whoi.edu` to your email, and run `sbatch run_jupyter_on_poseidon.sh` on the command line
2. Check the output from this script, which is piped to `log-jupyter-{jobid}.log`. You can check the job ID by running `mj` (short for my job) to see what jobs of yours are in the queue. Any errors will also be sent to this log.
3. Use the information from the log output to create a VPN tunnel with Putty (See [this screenshot](https://github.com/anthony-meza/WHOI-PO-HPC/blob/official_pilot_workshop/figures/jupyter_windows_screenshot.jpg) for more details.)
4. Start the tunnel by clicking "Open" in Putty
5. Locate the url in the file `log-jupyter-{jobid}.log` that begins with ``http://127.0.0.1:remote-port....``. Copy this url and paste it into a browser and your notebook should pop up!
