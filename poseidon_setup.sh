#!/bin/bash
#run this file in your terminal using "sh poseidon_setup.sh"

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

#Step 5: generate a Dask config file 
python -c "import dask_jobqueue"

#Step 6: Add custom configuration file for dask dashboard tunneling
# We are creating a new file per Dask's recommendations (see https://jobqueue.dask.org/en/latest/clusters-configuration-setup.html)
cd ~/.config/dask
wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/anthony-meza/WHOI-PO-HPC/refs/heads/official_pilot_workshop/distributed_dashboard.yaml
wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/anthony-meza/WHOI-PO-HPC/refs/heads/official_pilot_workshop/template.yaml
cd ~


