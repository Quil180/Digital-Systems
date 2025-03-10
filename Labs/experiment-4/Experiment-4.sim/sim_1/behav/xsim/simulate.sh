#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2024.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Tue Mar 04 22:45:18 EST 2025
# SW Build 5239630 on Fri Nov 08 22:34:34 MST 2024
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim testbench_part4_behav -key {Behavioral:sim_1:Functional:testbench_part4} -tclbatch testbench_part4.tcl -log simulate.log"
xsim testbench_part4_behav -key {Behavioral:sim_1:Functional:testbench_part4} -tclbatch testbench_part4.tcl -log simulate.log

