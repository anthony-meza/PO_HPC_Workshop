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

Download the installer using curl or wget or your favorite program and run the script.
For eg:

    curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
    bash Miniforge3-$(uname)-$(uname -m).sh

or

    wget "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
    bash Miniforge3-$(uname)-$(uname -m).sh

#### Windows

Download and execute the Windows installer. Follow the prompts, taking note of the options to "Create start menu shortcuts" and "Add Miniforge3 to my PATH environment variable". The latter is not selected by default due to potential conflicts with other software. Without Miniforge3 on the path, the most convenient way to use the installed software (such as commands conda and mamba) will be via the "Miniforge Prompt" installed to the start menu.

There are known issues with the usage of special characters and spaces in the installation location, see for example #484. We recommend users install in a directory without any such characters in the name.

## Installing Started

### Prerequisites

Before you begin, ensure you have met the following requirements:
- You have a WHOI Poseidon cluster account.
- You have Python and Conda installed on your local machine.
- You have basic knowledge of parallel and distributed computing concepts.

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/anthony-meza/WHOI-PO-HPC.git
    ```
2. Navigate to the project directory:
    ```bash
    cd WHOI-PO-HPC
    ```
3. Install the required Python packages:
   Using ```pip```
    ```bash
    pip install -r requirements.txt
    ```
    or ```conda``` (preferred method) 
    ```bash
    conda env create -f environment.yml
    ```

### Using Conda
We recommend using Miniconda, which is a lightweight version of Anaconda and is best for using on the cluster. 

- Instructions on how to install Miniconda on your local machine can be found [here](https://docs.anaconda.com/miniconda/)
- Activate an environment with `conda activate environment`
- Install new packages with `conda install -c conda-forge packagename`

## Using Dask

[Dask](https://dask.org/) is a flexible parallel computing library for analytics. It helps scale the Python ecosystem (numpy, pandas, scikit-learn, etc.) and enables execution on multi-core machines and distributed clusters.

- [Dask Documentation](https://docs.dask.org/en/latest/)
- Examples and tutorials: [examples/](examples/)

## Working with xarray

[xarray](http://xarray.pydata.org/en/stable/) is an open-source project and Python package that makes working with labeled multi-dimensional arrays simple, efficient, and fun!

- [xarray Documentation](http://xarray.pydata.org/en/stable/)
- Examples and tutorials: [examples/](examples/)

## Requesting Resources on Poseidon

Learn how to request and manage computing resources on the Poseidon cluster effectively:
- [Poseidon User Guide](https://www.whoi.edu/page.do?pid=23491)
- Examples of job scripts: [scripts/](scripts/)

## Setting Up Your Local Machine

To ensure your local machine can interact with Poseidon:
- Install the necessary SSH tools.
- Set up environment modules for consistency with the cluster environment.

## Contributing

Contributions are welcome! Please read the [contributing guide](CONTRIBUTING.md) to get started.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or suggestions, please open an issue or contact the repository maintainer at [your-email@whoi.edu](mailto:your-email@whoi.edu).
