# 🧊 Ising Model Simulation with Monte Carlo Method

This repository contains a Monte Carlo simulation of the 2D Ising model written in Fortran. The project was developed as part of a university assignment and explores fundamental concepts of statistical mechanics, such as phase transitions and magnetization.

## 📚 About the Project

The Ising model is one of the most studied systems in statistical physics, known for exhibiting a phase transition at a critical temperature. In this project, we simulate a square lattice of spins using the Metropolis algorithm. The lattice is initialized randomly and evolves over time, allowing us to compute observables such as magnetization and specific heat.

The simulation provides insights into how spin alignment changes with temperature, highlighting the critical behavior of the system.

## 📈 Results

Two key results were obtained by varying the system size `N` and analyzing the behavior at different temperatures `T`.

### 🔻 Magnetization vs Temperature

![Magnetization](./magnetization.jpeg)

**Figure 1**: Magnetization (M) as a function of temperature (T) for different lattice sizes `N`. As the system approaches the critical temperature, the magnetization drops sharply, signaling a phase transition from ordered to disordered states.

---

### 🔺 Specific Heat vs Temperature

![Specific Heat](./specific_heat.jpeg)

**Figure 2**: Specific heat (Cv) as a function of temperature (T) for various `N`. The peak becomes sharper and higher for larger `N`, as expected from finite-size scaling theory. The critical temperature is approximated by the position of the peak.

## 🛠️ Code

The main simulation is written in Fortran and simulates spin flips according to the Metropolis criterion. It outputs:

- Time evolution of magnetization
- Lattice configurations
- Temperature-dependent thermodynamic quantities

## 📄 Files

- `ising_model_montecarlo.f90`: Main Fortran source code
- `Voluntario_Ising.pdf`: Report with full explanation and analysis
- `magnetization.jpeg`: Magnetization vs Temperature plot
- `specific_heat.jpeg`: Specific Heat vs Temperature plot

## 💡 Future Improvements

- Port the simulation to Python using NumPy for accessibility
- Add animated visualizations of spin configurations
- Automate data collection and plotting

## 📬 Contact

Feel free to reach out if you have any questions or suggestions!  
📧 Javier Jesús González Moreno  
🌍 Munich, Germany

---

⭐️ *If you found this project interesting, give it a star and check out my other physics and data science projects!*

