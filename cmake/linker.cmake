if(NOT DEFINED LINKER_SCRIPT)
	message(WARNING "linker script no supplied, searching for *.ld files in root directory ${CMAKE_SOURCE_DIR}...")
	file(GLOB linker_script_auto "${CMAKE_SOURCE_DIR}/*.ld")
	if(linker_script_auto)
		set(LINKER_SCRIPT "${linker_script_auto}" CACHE STRING "Choose linker script." FORCE)
		message(STATUS "some linker script found")
	else()
		message(FATAL_ERROR "No linker script defined")
	endif()
endif(NOT DEFINED LINKER_SCRIPT)
message(STATUS "Linker script: ${LINKER_SCRIPT}")