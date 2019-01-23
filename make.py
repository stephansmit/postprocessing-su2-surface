import os

#check where it is run
if ("stephans" in os.environ['HOME']):
   os.system("module load vtk/6.2.0")
   os.system("module load gcc/5.2.0")
   os.system("mkdir -p build")
   os.chdir("build")
   os.system("cmake -DMESHGEN_SRC:PATH=/home/stephans/Blade-MeshGen/src -DSRC_DIR=/home/stephans/postprocessing-su2-surface .. -DSISL_DIR:PATH=/home/stephans/c-libraries/include/ -DSISL_LIB=/home/stephans/c-libraries/lib/libsisl.a ..")
   os.system("make -j8")
else:
   os.system("mkdir -p build")
   os.chdir("build")
   os.system("cmake -DVTK_DIR:PATH=/home/azureuser/Documents/VTK/build -DMESHGEN_SRC:PATH=/home/azureuser/Documents/Blade-MeshGen/src -DSRC_DIR=/home/azureuser/Documents/postprocessing-su2-surface ..")
   os.system("make -j8")


