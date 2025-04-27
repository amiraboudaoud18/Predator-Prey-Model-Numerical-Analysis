# Predator-Prey Model with Numerical Methods and Ecological Factors

This project models the evolution of predators and prey within an ecosystem by applying the **Lotka-Volterra equations** and enhancing them to include pollution effects and resource limitations. We solved and analyzed the systems numerically using **Euler's method** in **MATLAB**.

## 📖 Project Overview
- **Objective:** Analyze predator-prey dynamics considering ecological factors like pesticide use and limited resources.
- **Techniques Used:** Numerical solutions via Euler's method, MATLAB simulations, Phase-space analysis.
- **Dataset:** Simulated based on model parameters, no external dataset required.

## 📑 Report
A detailed report explaining the model, theorems, derivations, numerical methods, results, and ecological interpretations is available here:  
👉 [Read the Full Report](./report/PROJNMC2_report.pdf)

## 🛠️ Practical Work
MATLAB code implementations for solving and analyzing the models are available under the `Predator-Prey-Model-Numerical-Analysis_matlab_code/` directory:
- `PartB_question4.m`: Numerical solution of the classical model using Euler's explicit method.
- `PartB_question6.m`: Phase-space plots with various initial conditions.
- `PartB_question7p1.m` & `PartB_question7p2.m`: Effect of step size variation on accuracy.
- `PartC_question3p2.m`: Impact of pesticide use on predator-prey dynamics.
- `PartD_question3.m`: Resource limitation model (introducing carrying capacity).
and other Complementary documents. 

## 📈 Main Highlights
- **Classical Lotka-Volterra Equations**: Predator-prey cyclical dynamics without resource limits.
- **Pollution Impact Modeling**: Adding pesticide-induced mortality for both prey and predators.
- **Resource Limitations**: Introducing environmental carrying capacity for realistic ecosystem modeling.
- **Phase Plots & Population Time Series**: MATLAB visualizations for different cases and parameters.



## 🌟 Mathematical Foundations
- Existence and uniqueness of solutions guaranteed by the **Cauchy-Lipschitz theorem**.
- Stability analysis of equilibrium points.
- Biological interpretation of mathematical solutions.

## 👥 Contributors
- **Amira Boudaoud**
- **Ghofrane Ben Rhaïem**

## 📚 Conclusion

In this project, we explored the dynamics of predator-prey interactions using the **Lotka-Volterra model**, extending it by considering ecological factors such as pollution and resource limitations. Through the analysis of the simplified model, we demonstrated the characteristic oscillatory behavior of predator-prey systems — highlighting how prey populations can grow exponentially in the absence of predators and how predator populations decline without sufficient prey.

By employing **Euler's explicit method** for numerical simulations, we visualized different population dynamics under varying initial conditions and parameters. Our results illustrated the critical role of environmental factors in shaping the stability and behavior of ecological systems.

Overall, this work emphasizes the importance of considering both biological interactions and environmental constraints in ecological modeling. It lays a solid foundation for future research into more complex systems that incorporate additional real-world factors like habitat loss, climate change, and human interventions.


