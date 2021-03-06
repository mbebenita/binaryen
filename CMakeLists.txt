PROJECT(binaryen CXX)
CMAKE_MINIMUM_REQUIRED(VERSION 2.8.7)

INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/src)

SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")
SET(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib")
SET(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib")

IF(MSVC)
  SET(CMAKE_CXX_FLAGS "/arch:sse2 ${CMAKE_CXX_FLAGS}")
  SET(CMAKE_CXX_FLAGS "/O2 /Wall /WX- ${CMAKE_CXX_FLAGS}")
ELSE()
  SET(CMAKE_CXX_FLAGS "-std=c++11 ${CMAKE_CXX_FLAGS}")
  SET(CMAKE_CXX_FLAGS "-msse2 -mfpmath=sse ${CMAKE_CXX_FLAGS}")
  SET(CMAKE_CXX_FLAGS "-O2 -Wall -Werror ${CMAKE_CXX_FLAGS}")
ENDIF()

# clang doesn't print colored diagnostics when invoked from Ninja
IF (UNIX AND
    CMAKE_CXX_COMPILER_ID STREQUAL "Clang" AND
    CMAKE_GENERATOR STREQUAL "Ninja")
  SET(CMAKE_CXX_FLAGS "-fcolor-diagnostics ${CMAKE_CXX_FLAGS}")
ENDIF()

SET(support_SOURCES
  src/support/colors.cpp
  src/support/command-line.cpp
  src/support/file.cpp
  src/support/safe_integer.cpp
)
ADD_LIBRARY(support STATIC ${support_SOURCES})

SET(binaryen-shell_SOURCES
  src/binaryen-shell.cpp
  src/pass.cpp
  src/passes/LowerIfElse.cpp
  src/passes/MergeBlocks.cpp
  src/passes/NameManager.cpp
  src/passes/RemoveImports.cpp
  src/passes/RemoveUnusedBrs.cpp
  src/passes/RemoveUnusedNames.cpp
  src/passes/SimplifyLocals.cpp
)
ADD_EXECUTABLE(binaryen-shell
               ${binaryen-shell_SOURCES})
TARGET_LINK_LIBRARIES(binaryen-shell support)
SET_PROPERTY(TARGET binaryen-shell PROPERTY CXX_STANDARD 11)
SET_PROPERTY(TARGET binaryen-shell PROPERTY CXX_STANDARD_REQUIRED ON)
INSTALL(TARGETS binaryen-shell DESTINATION bin)

SET(asm2wasm_SOURCES
  src/asm2wasm-main.cpp
  src/pass.cpp
  src/passes/MergeBlocks.cpp
  src/passes/RemoveUnusedBrs.cpp
  src/passes/RemoveUnusedNames.cpp
  src/passes/SimplifyLocals.cpp
  src/emscripten-optimizer/parser.cpp
  src/emscripten-optimizer/simple_ast.cpp
  src/emscripten-optimizer/optimizer-shared.cpp
)
ADD_EXECUTABLE(asm2wasm
               ${asm2wasm_SOURCES})
TARGET_LINK_LIBRARIES(asm2wasm support)
SET_PROPERTY(TARGET asm2wasm PROPERTY CXX_STANDARD 11)
SET_PROPERTY(TARGET asm2wasm PROPERTY CXX_STANDARD_REQUIRED ON)
INSTALL(TARGETS asm2wasm DESTINATION bin)

SET(wasm2asm_SOURCES
  src/wasm2asm-main.cpp
  src/emscripten-optimizer/parser.cpp
  src/emscripten-optimizer/simple_ast.cpp
  src/emscripten-optimizer/optimizer-shared.cpp
)
ADD_EXECUTABLE(wasm2asm
               ${wasm2asm_SOURCES})
TARGET_LINK_LIBRARIES(wasm2asm support)
SET_PROPERTY(TARGET wasm2asm PROPERTY CXX_STANDARD 11)
SET_PROPERTY(TARGET wasm2asm PROPERTY CXX_STANDARD_REQUIRED ON)
INSTALL(TARGETS wasm2asm DESTINATION bin)

SET(s2wasm_SOURCES
  src/s2wasm-main.cpp
)
ADD_EXECUTABLE(s2wasm
               ${s2wasm_SOURCES})
TARGET_LINK_LIBRARIES(s2wasm support)
SET_PROPERTY(TARGET s2wasm PROPERTY CXX_STANDARD 11)
SET_PROPERTY(TARGET s2wasm PROPERTY CXX_STANDARD_REQUIRED ON)
INSTALL(TARGETS s2wasm DESTINATION bin)

SET(wasm_as_SOURCES
  src/wasm-as.cpp
)
ADD_EXECUTABLE(wasm-as
               ${wasm_as_SOURCES})
TARGET_LINK_LIBRARIES(wasm-as support)
SET_PROPERTY(TARGET wasm-as PROPERTY CXX_STANDARD 11)
SET_PROPERTY(TARGET wasm-as PROPERTY CXX_STANDARD_REQUIRED ON)
INSTALL(TARGETS wasm-as DESTINATION bin)
