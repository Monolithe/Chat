# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /home/maxime/Logiciels/clion-2017.2.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/maxime/Logiciels/clion-2017.2.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/maxime/Programmes/C/Chat/Client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/maxime/Programmes/C/Chat/Client/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Client.dir/flags.make

CMakeFiles/Client.dir/main.c.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maxime/Programmes/C/Chat/Client/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Client.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Client.dir/main.c.o   -c /home/maxime/Programmes/C/Chat/Client/main.c

CMakeFiles/Client.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Client.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/maxime/Programmes/C/Chat/Client/main.c > CMakeFiles/Client.dir/main.c.i

CMakeFiles/Client.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Client.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/maxime/Programmes/C/Chat/Client/main.c -o CMakeFiles/Client.dir/main.c.s

CMakeFiles/Client.dir/main.c.o.requires:

.PHONY : CMakeFiles/Client.dir/main.c.o.requires

CMakeFiles/Client.dir/main.c.o.provides: CMakeFiles/Client.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/Client.dir/build.make CMakeFiles/Client.dir/main.c.o.provides.build
.PHONY : CMakeFiles/Client.dir/main.c.o.provides

CMakeFiles/Client.dir/main.c.o.provides.build: CMakeFiles/Client.dir/main.c.o


CMakeFiles/Client.dir/connection.c.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/connection.c.o: ../connection.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maxime/Programmes/C/Chat/Client/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Client.dir/connection.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Client.dir/connection.c.o   -c /home/maxime/Programmes/C/Chat/Client/connection.c

CMakeFiles/Client.dir/connection.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Client.dir/connection.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/maxime/Programmes/C/Chat/Client/connection.c > CMakeFiles/Client.dir/connection.c.i

CMakeFiles/Client.dir/connection.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Client.dir/connection.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/maxime/Programmes/C/Chat/Client/connection.c -o CMakeFiles/Client.dir/connection.c.s

CMakeFiles/Client.dir/connection.c.o.requires:

.PHONY : CMakeFiles/Client.dir/connection.c.o.requires

CMakeFiles/Client.dir/connection.c.o.provides: CMakeFiles/Client.dir/connection.c.o.requires
	$(MAKE) -f CMakeFiles/Client.dir/build.make CMakeFiles/Client.dir/connection.c.o.provides.build
.PHONY : CMakeFiles/Client.dir/connection.c.o.provides

CMakeFiles/Client.dir/connection.c.o.provides.build: CMakeFiles/Client.dir/connection.c.o


CMakeFiles/Client.dir/chat_message.c.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/chat_message.c.o: ../chat_message.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maxime/Programmes/C/Chat/Client/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Client.dir/chat_message.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Client.dir/chat_message.c.o   -c /home/maxime/Programmes/C/Chat/Client/chat_message.c

CMakeFiles/Client.dir/chat_message.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Client.dir/chat_message.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/maxime/Programmes/C/Chat/Client/chat_message.c > CMakeFiles/Client.dir/chat_message.c.i

CMakeFiles/Client.dir/chat_message.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Client.dir/chat_message.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/maxime/Programmes/C/Chat/Client/chat_message.c -o CMakeFiles/Client.dir/chat_message.c.s

CMakeFiles/Client.dir/chat_message.c.o.requires:

.PHONY : CMakeFiles/Client.dir/chat_message.c.o.requires

CMakeFiles/Client.dir/chat_message.c.o.provides: CMakeFiles/Client.dir/chat_message.c.o.requires
	$(MAKE) -f CMakeFiles/Client.dir/build.make CMakeFiles/Client.dir/chat_message.c.o.provides.build
.PHONY : CMakeFiles/Client.dir/chat_message.c.o.provides

CMakeFiles/Client.dir/chat_message.c.o.provides.build: CMakeFiles/Client.dir/chat_message.c.o


CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.o: /home/maxime/Programmes/C/Chat/Server/data.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maxime/Programmes/C/Chat/Client/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.o   -c /home/maxime/Programmes/C/Chat/Server/data.c

CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/maxime/Programmes/C/Chat/Server/data.c > CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.i

CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/maxime/Programmes/C/Chat/Server/data.c -o CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.s

CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.o.requires:

.PHONY : CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.o.requires

CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.o.provides: CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.o.requires
	$(MAKE) -f CMakeFiles/Client.dir/build.make CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.o.provides.build
.PHONY : CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.o.provides

CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.o.provides.build: CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.o


CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.o: CMakeFiles/Client.dir/flags.make
CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.o: /home/maxime/Programmes/C/Chat/Server/input.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maxime/Programmes/C/Chat/Client/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.o   -c /home/maxime/Programmes/C/Chat/Server/input.c

CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/maxime/Programmes/C/Chat/Server/input.c > CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.i

CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/maxime/Programmes/C/Chat/Server/input.c -o CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.s

CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.o.requires:

.PHONY : CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.o.requires

CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.o.provides: CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.o.requires
	$(MAKE) -f CMakeFiles/Client.dir/build.make CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.o.provides.build
.PHONY : CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.o.provides

CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.o.provides.build: CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.o


# Object files for target Client
Client_OBJECTS = \
"CMakeFiles/Client.dir/main.c.o" \
"CMakeFiles/Client.dir/connection.c.o" \
"CMakeFiles/Client.dir/chat_message.c.o" \
"CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.o" \
"CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.o"

# External object files for target Client
Client_EXTERNAL_OBJECTS =

Client: CMakeFiles/Client.dir/main.c.o
Client: CMakeFiles/Client.dir/connection.c.o
Client: CMakeFiles/Client.dir/chat_message.c.o
Client: CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.o
Client: CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.o
Client: CMakeFiles/Client.dir/build.make
Client: CMakeFiles/Client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/maxime/Programmes/C/Chat/Client/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable Client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Client.dir/build: Client

.PHONY : CMakeFiles/Client.dir/build

CMakeFiles/Client.dir/requires: CMakeFiles/Client.dir/main.c.o.requires
CMakeFiles/Client.dir/requires: CMakeFiles/Client.dir/connection.c.o.requires
CMakeFiles/Client.dir/requires: CMakeFiles/Client.dir/chat_message.c.o.requires
CMakeFiles/Client.dir/requires: CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/data.c.o.requires
CMakeFiles/Client.dir/requires: CMakeFiles/Client.dir/home/maxime/Programmes/C/Chat/Server/input.c.o.requires

.PHONY : CMakeFiles/Client.dir/requires

CMakeFiles/Client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Client.dir/clean

CMakeFiles/Client.dir/depend:
	cd /home/maxime/Programmes/C/Chat/Client/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maxime/Programmes/C/Chat/Client /home/maxime/Programmes/C/Chat/Client /home/maxime/Programmes/C/Chat/Client/cmake-build-debug /home/maxime/Programmes/C/Chat/Client/cmake-build-debug /home/maxime/Programmes/C/Chat/Client/cmake-build-debug/CMakeFiles/Client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Client.dir/depend

