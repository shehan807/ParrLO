# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cmake-3.23.1-327dblnbramviejdezocehqsujhu7yyg/bin/cmake

# The command to remove a file.
RM = /storage/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cmake-3.23.1-327dblnbramviejdezocehqsujhu7yyg/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/testSchulzSingle.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/testSchulzSingle.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/testSchulzSingle.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/testSchulzSingle.dir/flags.make

tests/CMakeFiles/testSchulzSingle.dir/testSchulzSingle.cc.o: tests/CMakeFiles/testSchulzSingle.dir/flags.make
tests/CMakeFiles/testSchulzSingle.dir/testSchulzSingle.cc.o: ../tests/testSchulzSingle.cc
tests/CMakeFiles/testSchulzSingle.dir/testSchulzSingle.cc.o: tests/CMakeFiles/testSchulzSingle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/testSchulzSingle.dir/testSchulzSingle.cc.o"
	cd /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/tests && /usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/testSchulzSingle.dir/testSchulzSingle.cc.o -MF CMakeFiles/testSchulzSingle.dir/testSchulzSingle.cc.o.d -o CMakeFiles/testSchulzSingle.dir/testSchulzSingle.cc.o -c /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/tests/testSchulzSingle.cc

tests/CMakeFiles/testSchulzSingle.dir/testSchulzSingle.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testSchulzSingle.dir/testSchulzSingle.cc.i"
	cd /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/tests && /usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/tests/testSchulzSingle.cc > CMakeFiles/testSchulzSingle.dir/testSchulzSingle.cc.i

tests/CMakeFiles/testSchulzSingle.dir/testSchulzSingle.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testSchulzSingle.dir/testSchulzSingle.cc.s"
	cd /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/tests && /usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/tests/testSchulzSingle.cc -o CMakeFiles/testSchulzSingle.dir/testSchulzSingle.cc.s

tests/CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Replicated_def.cpp.o: tests/CMakeFiles/testSchulzSingle.dir/flags.make
tests/CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Replicated_def.cpp.o: ../src/MatrixClasses/Replicated_def.cpp
tests/CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Replicated_def.cpp.o: tests/CMakeFiles/testSchulzSingle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Replicated_def.cpp.o"
	cd /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/tests && /usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Replicated_def.cpp.o -MF CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Replicated_def.cpp.o.d -o CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Replicated_def.cpp.o -c /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/src/MatrixClasses/Replicated_def.cpp

tests/CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Replicated_def.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Replicated_def.cpp.i"
	cd /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/tests && /usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/src/MatrixClasses/Replicated_def.cpp > CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Replicated_def.cpp.i

tests/CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Replicated_def.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Replicated_def.cpp.s"
	cd /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/tests && /usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/src/MatrixClasses/Replicated_def.cpp -o CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Replicated_def.cpp.s

tests/CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Timer.cpp.o: tests/CMakeFiles/testSchulzSingle.dir/flags.make
tests/CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Timer.cpp.o: ../src/MatrixClasses/Timer.cpp
tests/CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Timer.cpp.o: tests/CMakeFiles/testSchulzSingle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tests/CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Timer.cpp.o"
	cd /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/tests && /usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Timer.cpp.o -MF CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Timer.cpp.o.d -o CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Timer.cpp.o -c /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/src/MatrixClasses/Timer.cpp

tests/CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Timer.cpp.i"
	cd /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/tests && /usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/src/MatrixClasses/Timer.cpp > CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Timer.cpp.i

tests/CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Timer.cpp.s"
	cd /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/tests && /usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/src/MatrixClasses/Timer.cpp -o CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Timer.cpp.s

# Object files for target testSchulzSingle
testSchulzSingle_OBJECTS = \
"CMakeFiles/testSchulzSingle.dir/testSchulzSingle.cc.o" \
"CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Replicated_def.cpp.o" \
"CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Timer.cpp.o"

# External object files for target testSchulzSingle
testSchulzSingle_EXTERNAL_OBJECTS =

tests/testSchulzSingle: tests/CMakeFiles/testSchulzSingle.dir/testSchulzSingle.cc.o
tests/testSchulzSingle: tests/CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Replicated_def.cpp.o
tests/testSchulzSingle: tests/CMakeFiles/testSchulzSingle.dir/__/src/MatrixClasses/Timer.cpp.o
tests/testSchulzSingle: tests/CMakeFiles/testSchulzSingle.dir/build.make
tests/testSchulzSingle: /usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/openblas-0.3.20-7um3t6kt2ehks5bl2w7baqw3ampaq6a5/lib/libopenblas.so
tests/testSchulzSingle: /lib64/libxpmem.so
tests/testSchulzSingle: /storage/pace-apps/manual/packages/openmpi/4.1.4/gcc-10.3.0/lib/libmpi.so
tests/testSchulzSingle: /storage/home/hhive1/sparmar32/projects/lib/magma/lib/libmagma_sparse.so
tests/testSchulzSingle: /storage/home/hhive1/sparmar32/projects/lib/magma/lib/libmagma.so
tests/testSchulzSingle: /usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/openblas-0.3.20-7um3t6kt2ehks5bl2w7baqw3ampaq6a5/lib/libopenblas.so
tests/testSchulzSingle: /usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu/lib64/libcusparse.so
tests/testSchulzSingle: /usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu/lib64/libcudadevrt.a
tests/testSchulzSingle: /usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu/lib64/libcublas.so
tests/testSchulzSingle: /usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/cuda-11.7.0-7sdye3id7ahz34mzhyzzqbxowjxgxkhu/lib64/libcudart.so
tests/testSchulzSingle: /usr/local/pace-apps/spack/packages/linux-rhel7-x86_64/gcc-4.8.5/gcc-10.3.0-o57x6h2gubo7bzh7evmy4mvibdqrlghr/lib64/libgomp.so
tests/testSchulzSingle: /lib64/libpthread.so
tests/testSchulzSingle: tests/CMakeFiles/testSchulzSingle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable testSchulzSingle"
	cd /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testSchulzSingle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/testSchulzSingle.dir/build: tests/testSchulzSingle
.PHONY : tests/CMakeFiles/testSchulzSingle.dir/build

tests/CMakeFiles/testSchulzSingle.dir/clean:
	cd /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/testSchulzSingle.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/testSchulzSingle.dir/clean

tests/CMakeFiles/testSchulzSingle.dir/depend:
	cd /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/tests /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/tests /storage/home/hhive1/sparmar32/projects/CSE6230/ParrLO/build/tests/CMakeFiles/testSchulzSingle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/testSchulzSingle.dir/depend

