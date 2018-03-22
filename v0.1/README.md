# Power-Monitoring-Board
This repo contains scripts, details and specifications for a board designed to measure very low power consumption in MCU's with high accuracy.

## Goals

The goal here is to develop a simple current measuring board that can measure from 1uA - 50mA at high frequencies (>10kHz).

This board has to be easy to connect to a computer or a raspberry, minimizing cable connections. The idea is to have a single board with two usb ports, one to connect to the PC and the other to an IoT node with any usb connection (micro, mini, etc.).

## Organization

The repo is organized as follows,

* **ltspice**: in this folder can be found the different spice schematics to simulate the different current measurement boards.
* **scripts**: in this folder can be found different c, python, etc. scripts used to read data from the current measurement circuit or calibrate the respective board.
* **boards**: the actual eagle schematics can be found in this folder, either for the circuits or breakout's for small smd-components.
