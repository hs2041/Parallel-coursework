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
CMAKE_SOURCE_DIR = /home/hardeep/repos/parallel-course-repo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hardeep/repos/parallel-course-repo/build

# Include any dependencies generated for this target.
include src/assignment1/CMakeFiles/assignment1.dir/depend.make

# Include the progress variables for this target.
include src/assignment1/CMakeFiles/assignment1.dir/progress.make

# Include the compile flags for this target's objects.
include src/assignment1/CMakeFiles/assignment1.dir/flags.make

src/assignment1/CMakeFiles/assignment1.dir/src/main.cpp.o: src/assignment1/CMakeFiles/assignment1.dir/flags.make
src/assignment1/CMakeFiles/assignment1.dir/src/main.cpp.o: ../src/assignment1/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hardeep/repos/parallel-course-repo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/assignment1/CMakeFiles/assignment1.dir/src/main.cpp.o"
	cd /home/hardeep/repos/parallel-course-repo/build/src/assignment1 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/assignment1.dir/src/main.cpp.o -c /home/hardeep/repos/parallel-course-repo/src/assignment1/src/main.cpp

src/assignment1/CMakeFiles/assignment1.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assignment1.dir/src/main.cpp.i"
	cd /home/hardeep/repos/parallel-course-repo/build/src/assignment1 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hardeep/repos/parallel-course-repo/src/assignment1/src/main.cpp > CMakeFiles/assignment1.dir/src/main.cpp.i

src/assignment1/CMakeFiles/assignment1.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assignment1.dir/src/main.cpp.s"
	cd /home/hardeep/repos/parallel-course-repo/build/src/assignment1 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hardeep/repos/parallel-course-repo/src/assignment1/src/main.cpp -o CMakeFiles/assignment1.dir/src/main.cpp.s

# Object files for target assignment1
assignment1_OBJECTS = \
"CMakeFiles/assignment1.dir/src/main.cpp.o"

# External object files for target assignment1
assignment1_EXTERNAL_OBJECTS =

src/assignment1/assignment1: src/assignment1/CMakeFiles/assignment1.dir/src/main.cpp.o
src/assignment1/assignment1: src/assignment1/CMakeFiles/assignment1.dir/build.make
src/assignment1/assignment1: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
src/assignment1/assignment1: /usr/lib/x86_64-linux-gnu/libpthread.so
src/assignment1/assignment1: src/assignment1/CMakeFiles/assignment1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hardeep/repos/parallel-course-repo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable assignment1"
	cd /home/hardeep/repos/parallel-course-repo/build/src/assignment1 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/assignment1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/assignment1/CMakeFiles/assignment1.dir/build: src/assignment1/assignment1

.PHONY : src/assignment1/CMakeFiles/assignment1.dir/build

src/assignment1/CMakeFiles/assignment1.dir/clean:
	cd /home/hardeep/repos/parallel-course-repo/build/src/assignment1 && $(CMAKE_COMMAND) -P CMakeFiles/assignment1.dir/cmake_clean.cmake
.PHONY : src/assignment1/CMakeFiles/assignment1.dir/clean

src/assignment1/CMakeFiles/assignment1.dir/depend:
	cd /home/hardeep/repos/parallel-course-repo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hardeep/repos/parallel-course-repo /home/hardeep/repos/parallel-course-repo/src/assignment1 /home/hardeep/repos/parallel-course-repo/build /home/hardeep/repos/parallel-course-repo/build/src/assignment1 /home/hardeep/repos/parallel-course-repo/build/src/assignment1/CMakeFiles/assignment1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/assignment1/CMakeFiles/assignment1.dir/depend
