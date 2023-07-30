# Robotics/Animation Non-Linear Equations Solver

## Overview

This project explores the use of non-linear equations in robotics/animation applications, focusing on inverse kinematic problems. Inverse kinematics involves determining the joint orientations in terms of angles that satisfy a given set of constraints, such as positioning the end-effector (tip of the manipulator) at a specific position. This problem often requires numerical solutions, and in this project, we evaluate Newton's and Broyden's methods for solving non-linear systems of equations in inverse kinematic applications.

## Objective

The main objectives of this project are:

1. Implement and evaluate Newton's and Broyden's methods for non-linear systems of equations.
2. Compare the accuracy and efficiency of the analytical Jacobian and finite-difference Jacobian approximations.
3. Visualize the manipulator's movement to a desired position using both methods.

## Usage

### Files

This repository contains the following source code files:

1. `evalRobot2D.m`: Evaluates the position and Jacobian of a 2D planar manipulator with two links and two rotational degrees of freedom.
2. `fdJacob2D.m`: Computes the Jacobian using finite-difference method with central differences.
3. `invKin2D.m`: Solves the inverse kinematic problem using Newton's or Broyden's method.
4. `plotRobot2D.m`: Provides a function for visualizing the manipulator's movement.
5. `eval2D.m`: Base script for user interaction.

### Instructions

1. Run the script `eval2D.m` to interactively evaluate the manipulator's movement to a desired position using user input.
2. Run the script `evaluateMethods.m` to compare the analytical and finite-difference Jacobian approximations for different values of `h`.
3. Run the script `comparePerformance.m` to observe and compare the manipulator's movement to a desired position using both Newton's and Broyden's methods.

## Requirements

This project requires [MATLAB](https://www.mathworks.com/products/matlab.html) to run the scripts and visualize the manipulator's movement.

## Getting Started

To get started with this project, simply clone the repository and run the provided MATLAB scripts.

```bash
git clone https://github.com/your-username/robotics-animation-nonlinear.git
cd robotics-animation-nonlinear
matlab


