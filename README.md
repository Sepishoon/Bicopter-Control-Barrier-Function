# Bicopter-Control-Barrier-Function
This repository contains the implementation of a safety-critical control strategy for a tilt-rotor Bicopter using High-Order Control Barrier Functions (HOCBFs). The project demonstrates how safety constraints in the altitude channel can be enforced while maintaining desired trajectory tracking through an LQR baseline controller.

## 📖 Project Overview

Bicopters, unlike quadrotors, are mechanically simpler but suffer from strong underactuation and nonlinear dynamics. Traditional controllers (e.g., PID, LQR) can achieve stabilization and tracking but cannot guarantee safety in altitude regulation.

This project introduces a HOCBF-based safety filter layered on top of an LQR controller. The safety-critical controller ensures that the Bicopter:
	•	Maintains altitude within safe bounds.
	•	Avoids overshoot violations.
	•	Preserves lateral motion performance in x and y directions.

Simulation results validate the approach using MATLAB/Simulink.

## ⚙️ Requirements

- MATLAB  
- Simulink (R2024a or newer recommended) 

## 🚀 Usage

### Loading the Variables
In MATLAB, run:

```matlab
load('Q.mat'); 
load('R.mat'); 
load('linsys1.mat');
K_Mat;
``` 
This computes the LQR gain matrix K based on the provided weighting matrices and system dynamics.
### Simulation 
Run the BiCopter_HOCBF.slx file.
