# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/azureuser/Documents/postprocessing-su2-surface

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/azureuser/Documents/postprocessing-su2-surface/build

# Include any dependencies generated for this target.
include CMakeFiles/SimplePointsReader.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SimplePointsReader.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SimplePointsReader.dir/flags.make

CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.o: CMakeFiles/SimplePointsReader.dir/flags.make
CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.o: ../SimplePointsReader.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/azureuser/Documents/postprocessing-su2-surface/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.o -c /home/azureuser/Documents/postprocessing-su2-surface/SimplePointsReader.cxx

CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/azureuser/Documents/postprocessing-su2-surface/SimplePointsReader.cxx > CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.i

CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/azureuser/Documents/postprocessing-su2-surface/SimplePointsReader.cxx -o CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.s

CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.o.requires:

.PHONY : CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.o.requires

CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.o.provides: CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.o.requires
	$(MAKE) -f CMakeFiles/SimplePointsReader.dir/build.make CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.o.provides.build
.PHONY : CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.o.provides

CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.o.provides.build: CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.o


CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.o: CMakeFiles/SimplePointsReader.dir/flags.make
CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.o: /home/azureuser/Documents/Blade-MeshGen/src/point.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/azureuser/Documents/postprocessing-su2-surface/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.o -c /home/azureuser/Documents/Blade-MeshGen/src/point.cpp

CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/azureuser/Documents/Blade-MeshGen/src/point.cpp > CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.i

CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/azureuser/Documents/Blade-MeshGen/src/point.cpp -o CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.s

CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.o.requires:

.PHONY : CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.o.requires

CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.o.provides: CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.o.requires
	$(MAKE) -f CMakeFiles/SimplePointsReader.dir/build.make CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.o.provides.build
.PHONY : CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.o.provides

CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.o.provides.build: CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.o


CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.o: CMakeFiles/SimplePointsReader.dir/flags.make
CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.o: /home/azureuser/Documents/Blade-MeshGen/src/lines.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/azureuser/Documents/postprocessing-su2-surface/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.o -c /home/azureuser/Documents/Blade-MeshGen/src/lines.cpp

CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/azureuser/Documents/Blade-MeshGen/src/lines.cpp > CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.i

CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/azureuser/Documents/Blade-MeshGen/src/lines.cpp -o CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.s

CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.o.requires:

.PHONY : CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.o.requires

CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.o.provides: CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.o.requires
	$(MAKE) -f CMakeFiles/SimplePointsReader.dir/build.make CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.o.provides.build
.PHONY : CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.o.provides

CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.o.provides.build: CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.o


CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.o: CMakeFiles/SimplePointsReader.dir/flags.make
CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.o: /home/azureuser/Documents/Blade-MeshGen/src/functions.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/azureuser/Documents/postprocessing-su2-surface/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.o -c /home/azureuser/Documents/Blade-MeshGen/src/functions.cpp

CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/azureuser/Documents/Blade-MeshGen/src/functions.cpp > CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.i

CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/azureuser/Documents/Blade-MeshGen/src/functions.cpp -o CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.s

CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.o.requires:

.PHONY : CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.o.requires

CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.o.provides: CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.o.requires
	$(MAKE) -f CMakeFiles/SimplePointsReader.dir/build.make CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.o.provides.build
.PHONY : CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.o.provides

CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.o.provides.build: CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.o


# Object files for target SimplePointsReader
SimplePointsReader_OBJECTS = \
"CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.o" \
"CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.o" \
"CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.o" \
"CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.o"

# External object files for target SimplePointsReader
SimplePointsReader_EXTERNAL_OBJECTS =

SimplePointsReader: CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.o
SimplePointsReader: CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.o
SimplePointsReader: CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.o
SimplePointsReader: CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.o
SimplePointsReader: CMakeFiles/SimplePointsReader.dir/build.make
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkIOLegacy-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkIOXML-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkIOXMLParser-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkexpat-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkInteractionStyle-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkFiltersExtraction-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkFiltersStatistics-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkImagingFourier-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkImagingCore-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkRenderingFreeType-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkfreetype-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkRenderingOpenGL2-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkglew-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkIOCore-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkdoubleconversion-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtklz4-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtklzma-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkzlib-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkRenderingCore-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkFiltersSources-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkFiltersGeneral-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkCommonComputationalGeometry-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkCommonColor-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkFiltersGeometry-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkFiltersCore-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkCommonExecutionModel-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkCommonDataModel-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkCommonTransforms-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkCommonMisc-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkCommonMath-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkCommonSystem-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtkCommonCore-8.2.so.1
SimplePointsReader: /home/azureuser/Documents/VTK/build/lib/libvtksys-8.2.so.1
SimplePointsReader: /usr/lib/x86_64-linux-gnu/libSM.so
SimplePointsReader: /usr/lib/x86_64-linux-gnu/libICE.so
SimplePointsReader: /usr/lib/x86_64-linux-gnu/libX11.so
SimplePointsReader: /usr/lib/x86_64-linux-gnu/libXext.so
SimplePointsReader: /usr/lib/x86_64-linux-gnu/libXt.so
SimplePointsReader: CMakeFiles/SimplePointsReader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/azureuser/Documents/postprocessing-su2-surface/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable SimplePointsReader"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SimplePointsReader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SimplePointsReader.dir/build: SimplePointsReader

.PHONY : CMakeFiles/SimplePointsReader.dir/build

CMakeFiles/SimplePointsReader.dir/requires: CMakeFiles/SimplePointsReader.dir/SimplePointsReader.cxx.o.requires
CMakeFiles/SimplePointsReader.dir/requires: CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/point.cpp.o.requires
CMakeFiles/SimplePointsReader.dir/requires: CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/lines.cpp.o.requires
CMakeFiles/SimplePointsReader.dir/requires: CMakeFiles/SimplePointsReader.dir/home/azureuser/Documents/Blade-MeshGen/src/functions.cpp.o.requires

.PHONY : CMakeFiles/SimplePointsReader.dir/requires

CMakeFiles/SimplePointsReader.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SimplePointsReader.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SimplePointsReader.dir/clean

CMakeFiles/SimplePointsReader.dir/depend:
	cd /home/azureuser/Documents/postprocessing-su2-surface/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/azureuser/Documents/postprocessing-su2-surface /home/azureuser/Documents/postprocessing-su2-surface /home/azureuser/Documents/postprocessing-su2-surface/build /home/azureuser/Documents/postprocessing-su2-surface/build /home/azureuser/Documents/postprocessing-su2-surface/build/CMakeFiles/SimplePointsReader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SimplePointsReader.dir/depend

