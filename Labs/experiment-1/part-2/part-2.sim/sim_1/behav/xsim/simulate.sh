#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2024.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Tue Jan 14 10:16:42 EST 2025
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
echo "xsim Part_2_Sim_behav -key {Behavioral:sim_1:Functional:Part_2_Sim} -tclbatch Part_2_Sim.tcl -log simulate.log"
xsim Part_2_Sim_behav -key {Behavioral:sim_1:Functional:Part_2_Sim} -tclbatch Part_2_Sim.tcl -log simulate.log

