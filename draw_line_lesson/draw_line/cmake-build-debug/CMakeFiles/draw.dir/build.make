# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/michael.bacci/Workspace/ISEP/2017/lesson_06/draw_line

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/michael.bacci/Workspace/ISEP/2017/lesson_06/draw_line/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/draw.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/draw.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/draw.dir/flags.make

CMakeFiles/draw.dir/DrawLine.cpp.o: CMakeFiles/draw.dir/flags.make
CMakeFiles/draw.dir/DrawLine.cpp.o: ../DrawLine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/michael.bacci/Workspace/ISEP/2017/lesson_06/draw_line/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/draw.dir/DrawLine.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/draw.dir/DrawLine.cpp.o -c /Users/michael.bacci/Workspace/ISEP/2017/lesson_06/draw_line/DrawLine.cpp

CMakeFiles/draw.dir/DrawLine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw.dir/DrawLine.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/michael.bacci/Workspace/ISEP/2017/lesson_06/draw_line/DrawLine.cpp > CMakeFiles/draw.dir/DrawLine.cpp.i

CMakeFiles/draw.dir/DrawLine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw.dir/DrawLine.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/michael.bacci/Workspace/ISEP/2017/lesson_06/draw_line/DrawLine.cpp -o CMakeFiles/draw.dir/DrawLine.cpp.s

CMakeFiles/draw.dir/DrawLine.cpp.o.requires:

.PHONY : CMakeFiles/draw.dir/DrawLine.cpp.o.requires

CMakeFiles/draw.dir/DrawLine.cpp.o.provides: CMakeFiles/draw.dir/DrawLine.cpp.o.requires
	$(MAKE) -f CMakeFiles/draw.dir/build.make CMakeFiles/draw.dir/DrawLine.cpp.o.provides.build
.PHONY : CMakeFiles/draw.dir/DrawLine.cpp.o.provides

CMakeFiles/draw.dir/DrawLine.cpp.o.provides.build: CMakeFiles/draw.dir/DrawLine.cpp.o


# Object files for target draw
draw_OBJECTS = \
"CMakeFiles/draw.dir/DrawLine.cpp.o"

# External object files for target draw
draw_EXTERNAL_OBJECTS =

libdraw.a: CMakeFiles/draw.dir/DrawLine.cpp.o
libdraw.a: CMakeFiles/draw.dir/build.make
libdraw.a: CMakeFiles/draw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/michael.bacci/Workspace/ISEP/2017/lesson_06/draw_line/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libdraw.a"
	$(CMAKE_COMMAND) -P CMakeFiles/draw.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/draw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/draw.dir/build: libdraw.a

.PHONY : CMakeFiles/draw.dir/build

CMakeFiles/draw.dir/requires: CMakeFiles/draw.dir/DrawLine.cpp.o.requires

.PHONY : CMakeFiles/draw.dir/requires

CMakeFiles/draw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/draw.dir/cmake_clean.cmake
.PHONY : CMakeFiles/draw.dir/clean

CMakeFiles/draw.dir/depend:
	cd /Users/michael.bacci/Workspace/ISEP/2017/lesson_06/draw_line/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/michael.bacci/Workspace/ISEP/2017/lesson_06/draw_line /Users/michael.bacci/Workspace/ISEP/2017/lesson_06/draw_line /Users/michael.bacci/Workspace/ISEP/2017/lesson_06/draw_line/cmake-build-debug /Users/michael.bacci/Workspace/ISEP/2017/lesson_06/draw_line/cmake-build-debug /Users/michael.bacci/Workspace/ISEP/2017/lesson_06/draw_line/cmake-build-debug/CMakeFiles/draw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/draw.dir/depend

