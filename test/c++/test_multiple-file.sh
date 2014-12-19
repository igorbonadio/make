#!/bin/bash

# Tests 'make'
test \
  "make init" \
  "cp ../resources/simple_calc.dat ." \
  "cp ../resources/simple_calc.cpp ." \
  "cp ../resources/mathlib.cpp ." \
  "cp ../resources/mathlib.hpp ." \
  "make standard" \
  "make" \
  should_raise 0

# Tests if 'make' builds the project
test \
  "make init" \
  "cp ../resources/simple_calc.dat ." \
  "cp ../resources/simple_calc.cpp ." \
  "cp ../resources/mathlib.cpp ." \
  "cp ../resources/mathlib.hpp ." \
  "make standard" \
  "make" \
  "./bin/a.out < ./data/simple_calc.dat" \
  should_output "4\n2\n27\n2\n1"