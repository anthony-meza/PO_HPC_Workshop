# WHOI-PO-HPC
This repository will contain all relevant information related to using parallel and distributed data analysis on the Poseidon cluster at the Woods Hole Oceanographic Institution (WHOI). This repository will specifically go over Dask, xarray and requesting resources on Poseidon and your local machine. Below is a README that I asked ChatGPT to generate for me, we can change it later but I was lazy. 

# Parallel and Distributed Computing on the Poseidon Cluster at WHOI

Welcome to the repository for all relevant information related to using parallel and distributed computing on the Poseidon cluster at the Woods Hole Oceanographic Institution (WHOI). This repository will specifically cover the following topics:

- Using Dask for parallel computing
- Leveraging xarray for handling multi-dimensional arrays
- Requesting resources on the Poseidon cluster
- Setting up your local machine for compatibility with Poseidon

## Table of Contents

- [Installing Miniforge On Poseidon](#installing-miniforge-on-poseidon)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)

## Installing Miniforge on Poseidon
We have already created a script for you which install ``micromamba`` and installs the packages necessary to participate in the workshop. 
To download the script, log in to Poseidon from Terminal (if using Mac/Linux) or Powershell (Windows)

`
ssh -XY username@poseidon.whoi.edu
`

Once logged in, confirm you are in your home directory 

`cd ~
`

Next, download the Miniforge script

`
wget https://github.com/anthony-meza/WHOI-PO-HPC/blob/main/poseidon_setup.sh
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
