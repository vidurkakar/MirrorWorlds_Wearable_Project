# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/vidurkakar/wearable/MirrorWorlds_Wearable_Project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vidurkakar/wearable/MirrorWorlds_Wearable_Project/build

# Include any dependencies generated for this target.
include application/RotationLog/CMakeFiles/RotationLog.dir/depend.make

# Include the progress variables for this target.
include application/RotationLog/CMakeFiles/RotationLog.dir/progress.make

# Include the compile flags for this target's objects.
include application/RotationLog/CMakeFiles/RotationLog.dir/flags.make

application/RotationLog/CMakeFiles/RotationLog.dir/RotationLog.cpp.o: application/RotationLog/CMakeFiles/RotationLog.dir/flags.make
application/RotationLog/CMakeFiles/RotationLog.dir/RotationLog.cpp.o: ../application/RotationLog/RotationLog.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vidurkakar/wearable/MirrorWorlds_Wearable_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object application/RotationLog/CMakeFiles/RotationLog.dir/RotationLog.cpp.o"
	cd /home/vidurkakar/wearable/MirrorWorlds_Wearable_Project/build/application/RotationLog && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RotationLog.dir/RotationLog.cpp.o -c /home/vidurkakar/wearable/MirrorWorlds_Wearable_Project/application/RotationLog/RotationLog.cpp

application/RotationLog/CMakeFiles/RotationLog.dir/RotationLog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RotationLog.dir/RotationLog.cpp.i"
	cd /home/vidurkakar/wearable/MirrorWorlds_Wearable_Project/build/application/RotationLog && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vidurkakar/wearable/MirrorWorlds_Wearable_Project/application/RotationLog/RotationLog.cpp > CMakeFiles/RotationLog.dir/RotationLog.cpp.i

application/RotationLog/CMakeFiles/RotationLog.dir/RotationLog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RotationLog.dir/RotationLog.cpp.s"
	cd /home/vidurkakar/wearable/MirrorWorlds_Wearable_Project/build/application/RotationLog && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vidurkakar/wearable/MirrorWorlds_Wearable_Project/application/RotationLog/RotationLog.cpp -o CMakeFiles/RotationLog.dir/RotationLog.cpp.s

application/RotationLog/CMakeFiles/RotationLog.dir/RotationLog.cpp.o.requires:

.PHONY : application/RotationLog/CMakeFiles/RotationLog.dir/RotationLog.cpp.o.requires

application/RotationLog/CMakeFiles/RotationLog.dir/RotationLog.cpp.o.provides: application/RotationLog/CMakeFiles/RotationLog.dir/RotationLog.cpp.o.requires
	$(MAKE) -f application/RotationLog/CMakeFiles/RotationLog.dir/build.make application/RotationLog/CMakeFiles/RotationLog.dir/RotationLog.cpp.o.provides.build
.PHONY : application/RotationLog/CMakeFiles/RotationLog.dir/RotationLog.cpp.o.provides

application/RotationLog/CMakeFiles/RotationLog.dir/RotationLog.cpp.o.provides.build: application/RotationLog/CMakeFiles/RotationLog.dir/RotationLog.cpp.o


# Object files for target RotationLog
RotationLog_OBJECTS = \
"CMakeFiles/RotationLog.dir/RotationLog.cpp.o"

# External object files for target RotationLog
RotationLog_EXTERNAL_OBJECTS =

application/RotationLog/RotationLog: application/RotationLog/CMakeFiles/RotationLog.dir/RotationLog.cpp.o
application/RotationLog/RotationLog: application/RotationLog/CMakeFiles/RotationLog.dir/build.make
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_ts.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_nonfree.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.9
application/RotationLog/RotationLog: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.9
application/RotationLog/RotationLog: application/RotationLog/CMakeFiles/RotationLog.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vidurkakar/wearable/MirrorWorlds_Wearable_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable RotationLog"
	cd /home/vidurkakar/wearable/MirrorWorlds_Wearable_Project/build/application/RotationLog && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RotationLog.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
application/RotationLog/CMakeFiles/RotationLog.dir/build: application/RotationLog/RotationLog

.PHONY : application/RotationLog/CMakeFiles/RotationLog.dir/build

application/RotationLog/CMakeFiles/RotationLog.dir/requires: application/RotationLog/CMakeFiles/RotationLog.dir/RotationLog.cpp.o.requires

.PHONY : application/RotationLog/CMakeFiles/RotationLog.dir/requires

application/RotationLog/CMakeFiles/RotationLog.dir/clean:
	cd /home/vidurkakar/wearable/MirrorWorlds_Wearable_Project/build/application/RotationLog && $(CMAKE_COMMAND) -P CMakeFiles/RotationLog.dir/cmake_clean.cmake
.PHONY : application/RotationLog/CMakeFiles/RotationLog.dir/clean

application/RotationLog/CMakeFiles/RotationLog.dir/depend:
	cd /home/vidurkakar/wearable/MirrorWorlds_Wearable_Project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vidurkakar/wearable/MirrorWorlds_Wearable_Project /home/vidurkakar/wearable/MirrorWorlds_Wearable_Project/application/RotationLog /home/vidurkakar/wearable/MirrorWorlds_Wearable_Project/build /home/vidurkakar/wearable/MirrorWorlds_Wearable_Project/build/application/RotationLog /home/vidurkakar/wearable/MirrorWorlds_Wearable_Project/build/application/RotationLog/CMakeFiles/RotationLog.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : application/RotationLog/CMakeFiles/RotationLog.dir/depend

