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
CMAKE_SOURCE_DIR = /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/resize

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/resize/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/resize.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/resize.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/resize.dir/flags.make

CMakeFiles/resize.dir/resize.cpp.o: CMakeFiles/resize.dir/flags.make
CMakeFiles/resize.dir/resize.cpp.o: ../resize.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/michael.bacci/Workspace/ISEP/2017/lesson_05/resize/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/resize.dir/resize.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/resize.dir/resize.cpp.o -c /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/resize/resize.cpp

CMakeFiles/resize.dir/resize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/resize.dir/resize.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/resize/resize.cpp > CMakeFiles/resize.dir/resize.cpp.i

CMakeFiles/resize.dir/resize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/resize.dir/resize.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/resize/resize.cpp -o CMakeFiles/resize.dir/resize.cpp.s

CMakeFiles/resize.dir/resize.cpp.o.requires:

.PHONY : CMakeFiles/resize.dir/resize.cpp.o.requires

CMakeFiles/resize.dir/resize.cpp.o.provides: CMakeFiles/resize.dir/resize.cpp.o.requires
	$(MAKE) -f CMakeFiles/resize.dir/build.make CMakeFiles/resize.dir/resize.cpp.o.provides.build
.PHONY : CMakeFiles/resize.dir/resize.cpp.o.provides

CMakeFiles/resize.dir/resize.cpp.o.provides.build: CMakeFiles/resize.dir/resize.cpp.o


# Object files for target resize
resize_OBJECTS = \
"CMakeFiles/resize.dir/resize.cpp.o"

# External object files for target resize
resize_EXTERNAL_OBJECTS =

resize: CMakeFiles/resize.dir/resize.cpp.o
resize: CMakeFiles/resize.dir/build.make
resize: /usr/local/lib/libopencv_shape.3.2.0.dylib
resize: /usr/local/lib/libopencv_stitching.3.2.0.dylib
resize: /usr/local/lib/libopencv_superres.3.2.0.dylib
resize: /usr/local/lib/libopencv_videostab.3.2.0.dylib
resize: /usr/local/lib/libopencv_objdetect.3.2.0.dylib
resize: /usr/local/lib/libopencv_calib3d.3.2.0.dylib
resize: /usr/local/lib/libopencv_features2d.3.2.0.dylib
resize: /usr/local/lib/libopencv_flann.3.2.0.dylib
resize: /usr/local/lib/libopencv_highgui.3.2.0.dylib
resize: /usr/local/lib/libopencv_ml.3.2.0.dylib
resize: /usr/local/lib/libopencv_photo.3.2.0.dylib
resize: /usr/local/lib/libopencv_video.3.2.0.dylib
resize: /usr/local/lib/libopencv_videoio.3.2.0.dylib
resize: /usr/local/lib/libopencv_imgcodecs.3.2.0.dylib
resize: /usr/local/lib/libopencv_imgproc.3.2.0.dylib
resize: /usr/local/lib/libopencv_core.3.2.0.dylib
resize: CMakeFiles/resize.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/michael.bacci/Workspace/ISEP/2017/lesson_05/resize/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable resize"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/resize.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/resize.dir/build: resize

.PHONY : CMakeFiles/resize.dir/build

CMakeFiles/resize.dir/requires: CMakeFiles/resize.dir/resize.cpp.o.requires

.PHONY : CMakeFiles/resize.dir/requires

CMakeFiles/resize.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/resize.dir/cmake_clean.cmake
.PHONY : CMakeFiles/resize.dir/clean

CMakeFiles/resize.dir/depend:
	cd /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/resize/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/resize /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/resize /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/resize/cmake-build-debug /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/resize/cmake-build-debug /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/resize/cmake-build-debug/CMakeFiles/resize.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/resize.dir/depend

