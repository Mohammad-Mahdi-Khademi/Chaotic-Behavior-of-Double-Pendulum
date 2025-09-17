# Chaotic Behavior of Double Pendulum  

## 📌 Project Overview  
This project investigates the chaotic dynamics of a double pendulum system.  
The double pendulum is a classical nonlinear system consisting of two masses connected in series. Its equations of motion lead to chaotic behavior, where tiny variations in initial conditions result in drastically different outcomes.  

The study includes:  
1. Analytical derivation of motion equations using the Lagrangian method.  
2. Numerical simulation of the system in MATLAB using ode45.  
3. Visualization of positions, angles, and energy variations over time.  

---

## 🎯 Objectives  
- Derive the equations of motion of the double pendulum using Lagrangian mechanics.  
- Calculate kinetic, potential, and total system energy.  
- Implement MATLAB codes to numerically solve the system.  
- Investigate sensitivity of the system to initial conditions.  
- Plot trajectories, angular motions, and energy diagrams.  

---

## 🛠 Tools & Software  
- MATLAB – Numerical solution of differential equations and plotting results.  
- Analytical Modeling – Derivation of motion equations using Lagrangian mechanics.  

---

## 📐 Methodology  

### 1. Analytical Modeling  
- Derived geometric relations and energies (kinetic & potential).  
- Defined the Lagrangian: L = T - V.  
- Applied Euler–Lagrange equations to obtain motion equations.  

### 2. Numerical Simulation (MATLAB)  
- Defined state-space equations in Double_Pendulum.m.  
- Solved equations using ode45 under different initial conditions.  
- Plotted trajectories of both masses.  
- Analyzed angular variations and total energy conservation.  

---

## 📊 Results  
- The system exhibited chaotic behavior under varying initial conditions.  
- Position and angle plots showed complex, non-periodic motion.  
- Small changes in initial angles led to completely different trajectories.  
- Total energy of the system was conserved within acceptable tolerance.  

### Simulation Outputs  
- [Trajectory of Masses](Plots And Graphs/MatLab/Chaotic Behavior Of Double Pendulum For First Conditions.png)  
- [Angular Variation (\theta1, \theta2 vs. Time)](Plots And Graphs/MatLab/First Conditions For Theta1 And Theta2.png)  
- [Total Energy vs. Time](Plots And Graphs/MatLab/Total Energy For First Conditions.png)  


---

## 📂 Repository Structure

├── Matlab/ # MATLAB codes (Double_Pendulum.m, First_Conditions.m, Second_Conditions.m, Total_Energy.m)
├── ADAMS/ # ADAMS
├── Plots And Graphs/ # Simulation plots (trajectories, angles, energy)
└── README.md # This file
