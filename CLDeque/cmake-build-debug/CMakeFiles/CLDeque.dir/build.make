# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.10

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "E:\Program Files\CLion 2017.3.4\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "E:\Program Files\CLion 2017.3.4\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\CLDeque"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\CLDeque\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/CLDeque.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CLDeque.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CLDeque.dir/flags.make

CMakeFiles/CLDeque.dir/circularList.c.obj: CMakeFiles/CLDeque.dir/flags.make
CMakeFiles/CLDeque.dir/circularList.c.obj: CMakeFiles/CLDeque.dir/includes_C.rsp
CMakeFiles/CLDeque.dir/circularList.c.obj: ../circularList.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\CLDeque\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/CLDeque.dir/circularList.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\CLDeque.dir\circularList.c.obj   -c "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\CLDeque\circularList.c"

CMakeFiles/CLDeque.dir/circularList.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CLDeque.dir/circularList.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\CLDeque\circularList.c" > CMakeFiles\CLDeque.dir\circularList.c.i

CMakeFiles/CLDeque.dir/circularList.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CLDeque.dir/circularList.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\CLDeque\circularList.c" -o CMakeFiles\CLDeque.dir\circularList.c.s

CMakeFiles/CLDeque.dir/circularList.c.obj.requires:

.PHONY : CMakeFiles/CLDeque.dir/circularList.c.obj.requires

CMakeFiles/CLDeque.dir/circularList.c.obj.provides: CMakeFiles/CLDeque.dir/circularList.c.obj.requires
	$(MAKE) -f CMakeFiles\CLDeque.dir\build.make CMakeFiles/CLDeque.dir/circularList.c.obj.provides.build
.PHONY : CMakeFiles/CLDeque.dir/circularList.c.obj.provides

CMakeFiles/CLDeque.dir/circularList.c.obj.provides.build: CMakeFiles/CLDeque.dir/circularList.c.obj


CMakeFiles/CLDeque.dir/circularListMain.c.obj: CMakeFiles/CLDeque.dir/flags.make
CMakeFiles/CLDeque.dir/circularListMain.c.obj: CMakeFiles/CLDeque.dir/includes_C.rsp
CMakeFiles/CLDeque.dir/circularListMain.c.obj: ../circularListMain.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\CLDeque\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/CLDeque.dir/circularListMain.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\CLDeque.dir\circularListMain.c.obj   -c "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\CLDeque\circularListMain.c"

CMakeFiles/CLDeque.dir/circularListMain.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CLDeque.dir/circularListMain.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\CLDeque\circularListMain.c" > CMakeFiles\CLDeque.dir\circularListMain.c.i

CMakeFiles/CLDeque.dir/circularListMain.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CLDeque.dir/circularListMain.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\CLDeque\circularListMain.c" -o CMakeFiles\CLDeque.dir\circularListMain.c.s

CMakeFiles/CLDeque.dir/circularListMain.c.obj.requires:

.PHONY : CMakeFiles/CLDeque.dir/circularListMain.c.obj.requires

CMakeFiles/CLDeque.dir/circularListMain.c.obj.provides: CMakeFiles/CLDeque.dir/circularListMain.c.obj.requires
	$(MAKE) -f CMakeFiles\CLDeque.dir\build.make CMakeFiles/CLDeque.dir/circularListMain.c.obj.provides.build
.PHONY : CMakeFiles/CLDeque.dir/circularListMain.c.obj.provides

CMakeFiles/CLDeque.dir/circularListMain.c.obj.provides.build: CMakeFiles/CLDeque.dir/circularListMain.c.obj


# Object files for target CLDeque
CLDeque_OBJECTS = \
"CMakeFiles/CLDeque.dir/circularList.c.obj" \
"CMakeFiles/CLDeque.dir/circularListMain.c.obj"

# External object files for target CLDeque
CLDeque_EXTERNAL_OBJECTS =

CLDeque.exe: CMakeFiles/CLDeque.dir/circularList.c.obj
CLDeque.exe: CMakeFiles/CLDeque.dir/circularListMain.c.obj
CLDeque.exe: CMakeFiles/CLDeque.dir/build.make
CLDeque.exe: CMakeFiles/CLDeque.dir/linklibs.rsp
CLDeque.exe: CMakeFiles/CLDeque.dir/objects1.rsp
CLDeque.exe: CMakeFiles/CLDeque.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\CLDeque\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable CLDeque.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\CLDeque.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CLDeque.dir/build: CLDeque.exe

.PHONY : CMakeFiles/CLDeque.dir/build

CMakeFiles/CLDeque.dir/requires: CMakeFiles/CLDeque.dir/circularList.c.obj.requires
CMakeFiles/CLDeque.dir/requires: CMakeFiles/CLDeque.dir/circularListMain.c.obj.requires

.PHONY : CMakeFiles/CLDeque.dir/requires

CMakeFiles/CLDeque.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\CLDeque.dir\cmake_clean.cmake
.PHONY : CMakeFiles/CLDeque.dir/clean

CMakeFiles/CLDeque.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\CLDeque" "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\CLDeque" "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\CLDeque\cmake-build-debug" "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\CLDeque\cmake-build-debug" "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\CLDeque\cmake-build-debug\CMakeFiles\CLDeque.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/CLDeque.dir/depend

