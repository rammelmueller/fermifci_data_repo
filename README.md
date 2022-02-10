# fermifci_data_repo
This repository holds source code and data for examples published in [this paper](https://arxiv.org/abs/2202.04603) using the [`FermiFCI.jl`](https://github.com/rammelmueller/FermiFCI.jl) package.


## Included examples
There are several examples included to pitch the idea on how the `FermiFCI.jl` package is uses. They are grouped together in topics (`harmonic_oscillator_1d` and `flat_box_1d`). The run scripts of each of the examples are given in sub-folders named appropriately.

- Example I: 1D harmonically trapped fermions with a plain basis cutoff.
- Example II: 1D harmonically trapped fermions with an energy restricted Hilbert space.
- Example III: Few fermions in 1D flat box with mass imbalance.
- Example IV: Effective interaction for 1D harmonically trapped fermions.

A more complete discussion of the examples and the associated phyiscs / ideas can be found [here](https://arxiv.org/abs/2202.04603).


## Example code
If you want, you can directly run the examples from the respective sub-directories. A detailed description on how to run the code can be found in the `example_code` directory.

### Prerequisites
`FermiFCI.jl` was developed with `Julia v1.5.3` so make sure you have this or a later version installed on your machine.

#### Python and Pycall.
Additionally, some examples use the package [PyCall](https://github.com/JuliaPy/PyCall.jl) which uses the locally available Python installation for some special functions. It's advisable to have Python 3 available with `scipy`, `numpy` as well as `mpmath` installed.

#### In case of Python problems
By default, this might be a Julia specific version (via Anaconda) that potentially doesn't have the necessary Python packages available. In case of problems it might be necessary to change the version of Python that is used by Julia which can quickly be done. Simply enter the Julia REPL and set
```
    ENV["PYTHON"] = "/path/to/python/version"
```
which tells Julia to use a specific version of Python. More often than not you're looking for the path `/usr/bin/python` or `/usr/bin/python3`, but this could in principle be anything. Then, enter the Pkg REPL (with  `]`) and type `build PyCall`. After restarting Julia your problems should be solved, assuming the corresponding packages are available in this version of Python. If not, simply install them with `pip`.

For more information on this please check the [documentation of PyCall](https://github.com/JuliaPy/PyCall.jl).


## Data and plot scripts
For full visibility, the data used in [1] along with some plot scripts to explore the results are collected in the directories `example_data` and `plot_scripts`. To run the evaluation scripts you need to have Python 3 installed along with the packages `matplotlib`, `pandas` and `scipy`. 


## Legal
Published under the MIT Licencse. If you use this for any publication, please [cite us](https://arxiv.org/abs/2202.04603). Have fun!

