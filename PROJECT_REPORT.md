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

The following parameters were used for both simulations:
- **Reaction Rate Constant (k):** 1 (1/s)
- **Volumetric Flow Rate (Q):** 10 (L/s)
- **Reactor Volume (V):** 100 (L)

### 3.2 CSTR Results

#### 3.2.1 Simulation Output

The CSTR simulation was run for a time span of 10 seconds. The initial concentration of reactant A was set to 0 mol/L. The plot below shows the concentration of reactant A as a function of time.


#### 3.2.2 Analysis

The concentration of reactant A increases and approaches a steady-state value as time progresses. The system reaches equilibrium where the rate of reaction balances with the flow of reactant into and out of the reactor. The results show how the reactant is gradually consumed over time.

### 3.3 PFR Results

#### 3.3.1 Simulation Output

The PFR simulation was run over a reactor volume span of 100 liters. The initial concentration of reactant A was set to 1 mol/L. The plot below shows the concentration of reactant A as a function of reactor volume.

#### 3.3.2 Analysis

The concentration of reactant A decreases as it moves through the reactor. The plot indicates that the reactant is progressively consumed along the length of the reactor. The concentration profile demonstrates the effect of flow through the tubular reactor and how the reactant concentration changes as a function of volume.

### 3.4 Comparison of CSTR and PFR

#### 3.4.1 Combined Plot

The combined plot below compares the concentration profiles of CSTR and PFR. For comparison, the volume in the PFR plot is converted to an equivalent time.

#### 3.4.2 Analysis

The combined plot provides a visual comparison between the CSTR and PFR. It highlights the differences in how concentration profiles evolve in each reactor type. The CSTR maintains a more uniform concentration throughout, while the PFR shows a gradient of concentration along the reactor length.

## 4. Conclusion

The simulation results provide insights into the performance of CSTR and PFR reactors. The CSTR reaches a steady-state concentration over time, while the PFR shows a gradual decrease in concentration along the reactor length. Understanding these behaviors is crucial for designing and optimizing chemical reactors in industrial applications.

