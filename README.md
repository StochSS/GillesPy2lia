# GillesPy2lia

GillesPy2lia is a Julia Wrapper for GillesPy2, a Python package for stochastic simulation of biochemical systems.

## Installation

GillesPy2lia currently requires a python installation of GillesPy2.  GillesPy2 can be installed through Python's package manager using:  
`pip install gillespy2`  
For more detailed instructions on installing GillesPy2 for Python, see https://github.com/gillespy2/gillespy2  

Once the Python package has been installed, GillesPy2lia can be installed through the pkg REPL using:  
`add https://github.com/stochss/gillespy2lia#main`  
or through the Pkg package using:  
`Pkg.add(PackageSpec(url="https://github.com/stochss/gillespy2lia#main", rev="main"))`  

## Usage

GillesPy2lia provides Julia bindings for interacting with the GillesPy2 Python Package.  [Here are some example notebooks using GillesPy2lia](Examples).  
