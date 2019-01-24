import os

#compile on cluster
if ("stephans" in os.environ['HOME']):
   cmds =[ 
   "module load cmake",
   "module load vtk/6.2.0",
   "module load gcc/5.2.0",
   "mkdir -p build",
   "(cd build && cmake -DMESHGEN_SRC:PATH=/home/stephans/Blade-MeshGen/src -DSRC_DIR=/home/stephans/postprocessing-su2-surface .. -DSISL_DIR:PATH=/home/stephans/c-libraries/include/ -DSISL_LIB=/home/stephans/c-libraries/lib/libsisl.a ..)",
   "(cd build && make -j8)"
   ]
#compile local
else:
   cmds = [
    "mkdir -p build",
    "(cd build && cmake -DVTK_DIR:PATH=/home/azureuser/Documents/VTK/build -DMESHGEN_SRC:PATH=/home/azureuser/Documents/Blade-MeshGen/src -DSRC_DIR=/home/azureuser/Documents/postprocessing-su2-surface ..)",
    "(cd build && make -j8)"
   ]

os.system("\n".join(cmds))

