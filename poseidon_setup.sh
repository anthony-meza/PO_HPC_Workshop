#!/bin/bash

curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh

source ~/.bash_profile 

#Step 1: Create Environment 
mamba create -n hpc_tutorial

#Step 2: Activate Environment 
mamba activate hpc_tutorial

#Step 3: Add packages to environment
mamba install -y numpy pandas ipykernel pip-tools fastapi jupyterlab \
                    copernicusmarine jupyter-resource-usage dask netCDF4 bottleneck \
                    xarray nodejs dask-labextension xesmf cmocean xhistogram scipy \
                    cartopy gsw geopy dask-jobqueue 
                    
mamba install -y jupyter 

#Step 4: Add environment to Jupyter kernel
python -m ipykernel install --user --name hpc_tutorial --display-name hpc_tutorial

#Step 5: Fix Dask Dashboard ports
sed -i 's|link: "/proxy/8787/status"|link: "/proxy/{port}/status"|' ~/.config/dask/jobqueue.yaml 
