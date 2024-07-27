# Sadiq Reactor Simulation Project Report

## 1. Introduction

This project involves simulating and analyzing the performance of two types of chemical reactors using MATLAB: the Continuous Stirred Tank Reactor (CSTR) and the Plug Flow Reactor (PFR). The goal is to model and analyze the concentration changes of a reactant as it moves through these reactors, comparing their behaviors and understanding how the concentration evolves under different conditions.

## 2. Methodology

### 2.1 Continuous Stirred Tank Reactor (CSTR)

#### 2.1.1 Reactor Description

A Continuous Stirred Tank Reactor (CSTR) is a type of reactor where the contents are continuously mixed, ensuring uniform composition throughout. The reaction occurs at a constant rate, and the reactor operates in a steady-state condition.

#### 2.1.2 Mathematical Model

The differential equation governing the CSTR is:

\[ \frac{dC_A}{dt} = \frac{Q}{V} (C_{A_{in}} - C_A) - k C_A \]

where:
- \( C_A \) = concentration of reactant A (mol/L)
- \( C_{A_{in}} \) = inlet concentration of reactant A (mol/L)
- \( Q \) = volumetric flow rate (L/s)
- \( V \) = volume of the reactor (L)
- \( k \) = reaction rate constant (1/s)

### 2.2 Plug Flow Reactor (PFR)

#### 2.2.1 Reactor Description

A Plug Flow Reactor (PFR) is a tubular reactor where the reactant flows through the reactor as a plug, with no radial mixing. The concentration changes along the length of the reactor, and the reactor operates under a steady-state condition.

#### 2.2.2 Mathematical Model

The differential equation governing the PFR is:

\[ \frac{dC_A}{dV} = -\frac{k C_A}{Q} \]

where:
- \( C_A \) = concentration of reactant A (mol/L)
- \( V \) = reactor volume (L)
- \( Q \) = volumetric flow rate (L/s)
- \( k \) = reaction rate constant (1/s)

## 3. Results

### 3.1 Simulation Setup

The following parameters were used for both
