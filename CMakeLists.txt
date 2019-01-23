
cmake_minimum_required(VERSION 3.3 FATAL_ERROR)

project(SimplePointsReader)

find_package(VTK COMPONENTS 
  vtkCommonCore
  vtkIOLegacy
  vtkIOXML
  vtkInteractionStyle
  vtkRenderingCore
  vtkRenderingFreeType
  vtkRenderingOpenGL2 QUIET)
if (NOT VTK_FOUND)
  message("Skipping SimplePointsReader: ${VTK_NOT_FOUND_MESSAGE}")
  return ()
endif()

if (NOT MESHGEN_SRC)
	message("Skipping SimplePointsReader: MESHGEN_SRC not set")
  return ()
endif()

message (STATUS "VTK_VERSION: ${VTK_VERSION}")
if (VTK_VERSION VERSION_LESS "8.90.0")
  # old system
  include(${VTK_USE_FILE})

    
  message("Including this shit: ${SRCFILES}")
  include_directories(${MESHGEN_SRC})
  include_directories(${SRC_DIR})
  add_executable(SimplePointsReader MACOSX_BUNDLE SimplePointsReader.cxx 
	  "${MESHGEN_SRC}/point.h"
	  "${MESHGEN_SRC}/point.cpp"
	  "${MESHGEN_SRC}/lines.h"
	  "${MESHGEN_SRC}/lines.cpp"
	  "${MESHGEN_SRC}/functions.h"
	  "${MESHGEN_SRC}/functions.cpp"
	  "${MESHGEN_SRC}/Param.h"
	  "${MESHGEN_SRC}/Param.cpp"
	  "${SRC_DIR}/vtkpoint.h"
	  )
  target_link_libraries(SimplePointsReader PRIVATE ${VTK_LIBRARIES})





 
else ()
  # include all components
  add_executable(SimplePointsReader MACOSX_BUNDLE SimplePointsReader.cxx )
  target_link_libraries(SimplePointsReader PRIVATE ${VTK_LIBRARIES})

  # vtk_module_autoinit is needed
  vtk_module_autoinit(
    TARGETS SimplePointsReader
    MODULES ${VTK_LIBRARIES}
    )
endif () 
