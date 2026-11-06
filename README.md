# Comsol-for-ERT-Forward
This repository contains COMSOL-based 2D/3D ERT forward modeling codes and data, utilizing the finite element method for resistivity simulation. Open-source code and data for research reproducibility. #ERT #COMSOL #FEM #Geophysics
You can email me to request the COMSOL model file.
Note: COMSOL .mph files are commercial-software files. Users must have a valid COMSOL Multiphysics license and the AC/DC Module to open and run them. The repository does not distribute COMSOL itself.

The workflow was developed and tested with the following software:

COMSOL Multiphysics 5.3/5.4 or later, with the AC/DC Module 
    Used for 3D finite element forward modeling of the static electric field.
    Infinite element domains were applied to lateral and bottom boundaries.
ResIPy [insert tested version, e.g., 3.x]
    Open-source software for geoelectrical inversion/modeling.
    Used for inversion of synthetic ERT datasets.
Python 3.x [insert version]
    Required for post-processing and ResIPy Python scripts, if applicable.
    Required packages: numpy, pandas, matplotlib, pyvista (optional), resipy.
[MATLAB version, if used] — only if MATLAB scripts are included.
    A standard spreadsheet or text editor can be used to inspect .csv/.txt data files.
