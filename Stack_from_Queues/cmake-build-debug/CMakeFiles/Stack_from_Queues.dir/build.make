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
CMAKE_SOURCE_DIR = "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\Stack_from_Queues"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\Stack_from_Queues\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Stack_from_Queues.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Stack_from_Queues.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Stack_from_Queues.dir/flags.make

CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.obj: CMakeFiles/Stack_from_Queues.dir/flags.make
CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.obj: ../stack_from_queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\Stack_from_Queues\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Stack_from_Queues.dir\stack_from_queue.c.obj   -c "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\Stack_from_Queues\stack_from_queue.c"

CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\Stack_from_Queues\stack_from_queue.c" > CMakeFiles\Stack_from_Queues.dir\stack_from_queue.c.i

CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\Stack_from_Queues\stack_from_queue.c" -o CMakeFiles\Stack_from_Queues.dir\stack_from_queue.c.s

CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.obj.requires:

.PHONY : CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.obj.requires

CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.obj.provides: CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.obj.requires
	$(MAKE) -f CMakeFiles\Stack_from_Queues.dir\build.make CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.obj.provides.build
.PHONY : CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.obj.provides

CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.obj.provides.build: CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.obj


# Object files for target Stack_from_Queues
Stack_from_Queues_OBJECTS = \
"CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.obj"

# External object files for target Stack_from_Queues
Stack_from_Queues_EXTERNAL_OBJECTS =

Stack_from_Queues.exe: CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.obj
Stack_from_Queues.exe: CMakeFiles/Stack_from_Queues.dir/build.make
Stack_from_Queues.exe: CMakeFiles/Stack_from_Queues.dir/linklibs.rsp
Stack_from_Queues.exe: CMakeFiles/Stack_from_Queues.dir/objects1.rsp
Stack_from_Queues.exe: CMakeFiles/Stack_from_Queues.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\Stack_from_Queues\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Stack_from_Queues.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Stack_from_Queues.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Stack_from_Queues.dir/build: Stack_from_Queues.exe

.PHONY : CMakeFiles/Stack_from_Queues.dir/build

CMakeFiles/Stack_from_Queues.dir/requires: CMakeFiles/Stack_from_Queues.dir/stack_from_queue.c.obj.requires

.PHONY : CMakeFiles/Stack_from_Queues.dir/requires

CMakeFiles/Stack_from_Queues.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Stack_from_Queues.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Stack_from_Queues.dir/clean

CMakeFiles/Stack_from_Queues.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\Stack_from_Queues" "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\Stack_from_Queues" "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\Stack_from_Queues\cmake-build-debug" "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\Stack_from_Queues\cmake-build-debug" "E:\OSU Comp Sci\CS 261\assignments\assignment3\Assignment_3_Instructions_S18\Assignment_3_Instructions_S18\Stack_from_Queues\cmake-build-debug\CMakeFiles\Stack_from_Queues.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Stack_from_Queues.dir/depend

