# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hardeep/repos/parallel-course-repo/src/assignment1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hardeep/repos/parallel-course-repo/src/assignment1/build

# Include any dependencies generated for this target.
include CMakeFiles/parallel_basic.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/parallel_basic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/parallel_basic.dir/flags.make

CMakeFiles/parallel_basic.dir/src/parallel_basic.cpp.o: CMakeFiles/parallel_basic.dir/flags.make
CMakeFiles/parallel_basic.dir/src/parallel_basic.cpp.o: ../src/parallel_basic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hardeep/repos/parallel-course-repo/src/assignment1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/parallel_basic.dir/src/parallel_basic.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parallel_basic.dir/src/parallel_basic.cpp.o -c /home/hardeep/repos/parallel-course-repo/src/assignment1/src/parallel_basic.cpp

CMakeFiles/parallel_basic.dir/src/parallel_basic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parallel_basic.dir/src/parallel_basic.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hardeep/repos/parallel-course-repo/src/assignment1/src/parallel_basic.cpp > CMakeFiles/parallel_basic.dir/src/parallel_basic.cpp.i

CMakeFiles/parallel_basic.dir/src/parallel_basic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parallel_basic.dir/src/parallel_basic.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hardeep/repos/parallel-course-repo/src/assignment1/src/parallel_basic.cpp -o CMakeFiles/parallel_basic.dir/src/parallel_basic.cpp.s

# Object files for target parallel_basic
parallel_basic_OBJECTS = \
"CMakeFiles/parallel_basic.dir/src/parallel_basic.cpp.o"

# External object files for target parallel_basic
parallel_basic_EXTERNAL_OBJECTS =

parallel_basic: CMakeFiles/parallel_basic.dir/src/parallel_basic.cpp.o
parallel_basic: CMakeFiles/parallel_basic.dir/build.make
parallel_basic: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
parallel_basic: /usr/lib/x86_64-linux-gnu/libpthread.so
parallel_basic: CMakeFiles/parallel_basic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hardeep/repos/parallel-course-repo/src/assignment1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable parallel_basic"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/parallel_basic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/parallel_basic.dir/build: parallel_basic

.PHONY : CMakeFiles/parallel_basic.dir/build

CMakeFiles/parallel_basic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/parallel_basic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/parallel_basic.dir/clean

CMakeFiles/parallel_basic.dir/depend:
	cd /home/hardeep/repos/parallel-course-repo/src/assignment1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hardeep/repos/parallel-course-repo/src/assignment1 /home/hardeep/repos/parallel-course-repo/src/assignment1 /home/hardeep/repos/parallel-course-repo/src/assignment1/build /home/hardeep/repos/parallel-course-repo/src/assignment1/build /home/hardeep/repos/parallel-course-repo/src/assignment1/build/CMakeFiles/parallel_basic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/parallel_basic.dir/depend

