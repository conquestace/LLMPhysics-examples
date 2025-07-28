# LLMPhysics Examples: A Showcase of Real Physics Simulations

Welcome to the **LLMPhysics Examples** repository! This project was created for the `/r/LLMPhysics` community to provide a clear, high-quality standard for what code-backed, rigorous physics exploration looks like.

The goal here is to move beyond speculative "Theories of Everything" and demonstrate the power and satisfaction of working with **established physical principles**. Real physics is not about inventing new forces; it's about understanding the deep, often counter-intuitive, and beautiful rules that govern our universe through mathematics, simulation, and analysis.

These projects are intended to serve as educational templates and examples of the kind of high-quality work we hope to encourage in the community.

## Projects in this Repository

### 1. Analyzing Collider Events

This project simulates a real-world particle physics analysis to determine the number of neutrino species in a hypothetical universe by analyzing Z boson decays. It demonstrates how physicists use "visible" events (like decays to muons) to make precise measurements about "invisible" particles (neutrinos).

*   **Key Physics Concepts Demonstrated:**
    *   The Standard Model of Particle Physics
    *   Z Boson resonance and decay channels
    *   Feynman Diagrams
    *   Missing Transverse Energy (MET) as an experimental signature
    *   The use of Kinematic Cuts to reduce background noise
    *   Data analysis techniques in high-energy physics

*   **In This Directory:**
        `/code`: The complete, well-commented Python source code for the simulation.
    *   `/tex`: The full report written in LaTeX, including the compiled PDF (`analyzing-collider-events.pdf`). This explains the theory, methodology, and results in detail.

### 2. Simulating Two-Body Decays

This project provides a complete simulation of a fundamental process in particle physics: the two-body decay of a neutral pion (π⁰) into two photons. It builds the simulation from the ground up, starting with conservation laws and relativistic kinematics, and uses it to calculate the geometric efficiency of a hypothetical particle detector.

*   **Key Physics Concepts Demonstrated:**
    *   Relativistic Kinematics (E² = p²c² + m²c⁴)
    *   4-Vector Notation
    *   Lorentz Transformations (boosting from a particle's rest frame to the lab frame)
    *   Monte Carlo Simulation Methods
    *   Geometric Detector Efficiency and Solid Angle
    *   The importance of relativistic "beaming" in experimental results

*   **In This Directory:**
    *   `/code`: The complete, well-commented Python source code for the simulation.
    *   `/tex`: The full report in LaTeX, including the compiled PDF (`two-body-decay.pdf`), which details the physics and interprets the simulation results.

## Our Philosophy: The Pillars of a Good Physics Project

We believe that meaningful contributions to physics (at any level) are built on a foundation of rigor. The projects here follow four key principles that are absent in pseudoscience:

1.  **Grounded in Reality:** They start with established, experimentally-verified physical laws (like the Standard Model and Special Relativity). They do not invent new particles, forces, or dimensions without extraordinary justification.
2.  **Reproducible and Transparent:** They are backed by good **code** and **math**. The methodology is not a secret; you can run the simulations yourself, check the math, and verify the results.
3.  **Clear, Step-by-Step Methodology:** The approach is explained logically. There are no "miracles" or unexplained "fudge factors." Every calculation and every line of code serves a purpose derived from physical principles.
4.  **Falsifiable and Focused:** These projects tackle specific, well-defined problems and produce concrete, testable results. Their conclusions are modest and directly supported by the analysis, not grand, sweeping claims about the nature of reality.

## How to Use and Contribute to This Repository

*   **As a Learner:** Clone the repository, read the PDFs to understand the physics, and then dive into the code. Try to modify the parameters, change the detector sizes, or simulate a different particle decay. This is the best way to learn!
*   **As a Contributor:** We strongly encourage contributions! If you have a well-documented physics simulation or analysis project that meets the standards above, please feel free to submit a pull request. Your project should be:
    *   A simulation or analysis of a concept from **established physics**.
    *   Include well-commented source code.
    *   Preferably include a write-up (like a paper or a detailed README) explaining the physics and your results.

Let's work together to make `/r/LLMPhysics` a destination for exciting and rigorous scientific exploration.