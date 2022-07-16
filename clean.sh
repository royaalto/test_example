#!/bin/bash
find . -type f -name '*.o' -exec rm {} +
find . -type f -name '*.gch' -exec rm {} +
find . -type f -name 'Makefile' -exec rm {} +
find . -type f -name 'CMakeCache.txt' -exec rm {} +
find . -type f -name 'cmake_install.cmake' -exec rm {} +
find . -type f -name '*.*~' -exec rm {} +
find . -type f -name '*.*.orig' -exec rm {} +
find . -type d -name CMakeFiles -exec rm -rf {} +
find . -type f -name '[^Find]*.cmake' -exec rm {} +
find . -type d -name Testing -exec rm -rm {} +
find . -type d -name test_results -exec rm -rf {} +
find . -type d -name bin -exec rm -rf {} +
find . -type d -name libpair.a -exec rm -rf {} +
