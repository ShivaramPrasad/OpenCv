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
CMAKE_SOURCE_DIR = /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/win2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/win2/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/window.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/window.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/window.dir/flags.make

CMakeFiles/window.dir/win.cpp.o: CMakeFiles/window.dir/flags.make
CMakeFiles/window.dir/win.cpp.o: ../win.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/michael.bacci/Workspace/ISEP/2017/lesson_05/win2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/window.dir/win.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/window.dir/win.cpp.o -c /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/win2/win.cpp

CMakeFiles/window.dir/win.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/window.dir/win.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/win2/win.cpp > CMakeFiles/window.dir/win.cpp.i

CMakeFiles/window.dir/win.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/window.dir/win.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/win2/win.cpp -o CMakeFiles/window.dir/win.cpp.s

CMakeFiles/window.dir/win.cpp.o.requires:

.PHONY : CMakeFiles/window.dir/win.cpp.o.requires

CMakeFiles/window.dir/win.cpp.o.provides: CMakeFiles/window.dir/win.cpp.o.requires
	$(MAKE) -f CMakeFiles/window.dir/build.make CMakeFiles/window.dir/win.cpp.o.provides.build
.PHONY : CMakeFiles/window.dir/win.cpp.o.provides

CMakeFiles/window.dir/win.cpp.o.provides.build: CMakeFiles/window.dir/win.cpp.o


# Object files for target window
window_OBJECTS = \
"CMakeFiles/window.dir/win.cpp.o"

# External object files for target window
window_EXTERNAL_OBJECTS =

window: CMakeFiles/window.dir/win.cpp.o
window: CMakeFiles/window.dir/build.make
window: /usr/local/lib/libopencv_shape.3.2.0.dylib
window: /usr/local/lib/libopencv_stitching.3.2.0.dylib
window: /usr/local/lib/libopencv_superres.3.2.0.dylib
window: /usr/local/lib/libopencv_videostab.3.2.0.dylib
window: /usr/local/lib/libopencv_objdetect.3.2.0.dylib
window: /usr/local/lib/libopencv_calib3d.3.2.0.dylib
window: /usr/local/lib/libopencv_features2d.3.2.0.dylib
window: /usr/local/lib/libopencv_flann.3.2.0.dylib
window: /usr/local/lib/libopencv_highgui.3.2.0.dylib
window: /usr/local/lib/libopencv_ml.3.2.0.dylib
window: /usr/local/lib/libopencv_photo.3.2.0.dylib
window: /usr/local/lib/libopencv_video.3.2.0.dylib
window: /usr/local/lib/libopencv_videoio.3.2.0.dylib
window: /usr/local/lib/libopencv_imgcodecs.3.2.0.dylib
window: /usr/local/lib/libopencv_imgproc.3.2.0.dylib
window: /usr/local/lib/libopencv_core.3.2.0.dylib
window: CMakeFiles/window.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/michael.bacci/Workspace/ISEP/2017/lesson_05/win2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable window"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/window.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/window.dir/build: window

.PHONY : CMakeFiles/window.dir/build

CMakeFiles/window.dir/requires: CMakeFiles/window.dir/win.cpp.o.requires

.PHONY : CMakeFiles/window.dir/requires

CMakeFiles/window.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/window.dir/cmake_clean.cmake
.PHONY : CMakeFiles/window.dir/clean

CMakeFiles/window.dir/depend:
	cd /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/win2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/win2 /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/win2 /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/win2/cmake-build-debug /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/win2/cmake-build-debug /Users/michael.bacci/Workspace/ISEP/2017/lesson_05/win2/cmake-build-debug/CMakeFiles/window.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/window.dir/depend

