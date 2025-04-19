# Monte Carlo Simulation of the 2D Ising Model

This repository contains a Monte Carlo simulation of the 2D Ising model using the Metropolis algorithm. The model was implemented in Fortran and was part of an academic project during my Physics degree.

## Overview

The goal of this project is to study the behavior of magnetization and heat capacity of a 2D lattice of spins as a function of temperature. The simulation uses periodic boundary conditions and is performed at different lattice sizes to observe finite-size effects.

The project was carried out voluntarily in addition to my coursework, and included both theoretical analysis and visualization of results.

## Features

- Spin initialization with random orientation
- Periodic boundary conditions
- Energy variation calculation
- Magnetization calculation
- Monte Carlo steps for thermalization
- Data output for visualization

## Files

- `ising_model_montecarlo.f90`: Main Fortran program implementing the Metropolis algorithm
- `Voluntario_Ising.pdf`: Final report (in Spanish) explaining the theoretical background and analysis
- `magnetization_vs_temperature.jpeg`: Magnetization vs. Temperature graph
- `heat_capacity_vs_temperature.jpeg`: Heat Capacity vs. Temperature graph

## Results

### Magnetization vs. Temperature

Magnetization decreases as temperature increases, showing a clear phase transition near the critical temperature.

![Magnetization vs Temperature](./magnetization_vs_temperature.jpeg)

> **Figure:** Magnetization (M) as a function of temperature (T) for different system sizes (N). As N increases, the phase transition becomes sharper.

---

### Heat Capacity vs. Temperature

Heat capacity peaks near the critical temperature, becoming more pronounced as system size increases.

![Heat Capacity vs Temperature](./heat_capacity_vs_temperature.jpeg)

> **Figure:** Heat capacity (Cv) as a function of temperature (T). As lattice size increases, the peak becomes sharper and better aligned with theoretical expectations.

This behavior is consistent with finite-size scaling theory, where the heat capacity peak scales as \( N^{\sigma/\nu} \).

## How to Run

This code is written in Fortran 90 and can be compiled and executed using `gfortran`:

```bash
gfortran -o ising ising_model_montecarlo.f90
./ising
