#!/bin/bash
mkdir build
cd build
cmake -DVTK_DIR:PATH=/home/azureuser/Documents/VTK/build -DMESHGEN_SRC:PATH=/home/azureuser/Documents/Blade-MeshGen/src -DSRC_DIR=/home/azureuser/Documents/postprocessing-su2-surface ..
