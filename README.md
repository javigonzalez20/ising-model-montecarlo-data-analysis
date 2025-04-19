# Monte Carlo Simulation of the Ising Model

This project presents a Monte Carlo simulation of the two-dimensional Ising model, implemented in Fortran, as part of a university assignment in Statistical Physics. The simulation explores the evolution of magnetization at a fixed temperature using the Metropolis algorithm.

## 🧠 Background

The Ising model is a mathematical model used in statistical mechanics to describe ferromagnetism in statistical physics. It consists of discrete variables representing magnetic dipole moments (spins) arranged on a lattice. Spins interact with their nearest neighbors and can be either +1 or -1. The total energy of the system is determined by the spin configuration, and the system evolves according to probabilistic rules (e.g., the Metropolis criterion) toward thermal equilibrium.

In this simulation, we study the time evolution of magnetization at a temperature of 0.5 K and track the system's transition toward equilibrium using a 60x60 lattice with periodic boundary conditions.

## 🧩 Methodology

- **Programming Language**: Fortran 90
- **Algorithm**: Metropolis Monte Carlo
- **Lattice Size**: 60x60 spins
- **Temperature**: 0.5 K (fixed)
- **Boundary Conditions**: Periodic
- **Simulation Time**: 100,000 Monte Carlo steps per spin

The code calculates the variation in energy when flipping a randomly selected spin and decides whether to accept the flip based on the Metropolis criterion. It records the system's magnetization and outputs the spin configuration to `.dat` files.

## 📂 Files

- `ising_model_montecarlo.f90`: Clean, documented Fortran source code of the simulation.
- `Voluntario_Ising.pdf`: Original report describing the physical model, the implementation, and visual results.
- `matrices_T=0.5K.dat`: Spin configurations over time (output file, not included).
- `magnetizacion_T=0.5K.dat`: Time evolution of magnetization (output file, not included).

## 📈 Example Results

Images from the simulation show the spontaneous ordering of spins over time, and a graph of magnetization vs. time reflects the convergence to a steady value. These results are presented and interpreted in the attached PDF.

## 🚀 How to Run

To run the simulation:

1. Make sure you have a Fortran compiler (e.g., `gfortran`) installed.
2. Compile the code:

   ```bash
   gfortran ising_model_montecarlo.f90 -o ising_model
