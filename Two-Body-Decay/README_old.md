# Two-Body Decay Simulation

This project simulates the decay of neutral pions ($\pi^0$) into two photons ($\gamma \gamma$), utilizing relativistic kinematics and conservation laws. The simulation is designed to estimate the geometric efficiency of a detector in detecting decay products.

## Overview

The neutral pion decays via the electromagnetic interaction, and the simulation captures the kinematics of this decay both in the rest frame of the pion and in a laboratory frame. The project includes:

- **Decay Simulation**: Models the decay of $\pi^0$ into two photons.
- **Lorentz Transformation**: Boosts the decay products to the lab frame.
- **Detection Criteria**: Assesses whether the photons hit a detector located downstream.


## Key Functions

- **`two_body_decay(M, m1, m2)`**: Generates four-momenta for two decay products in the rest frame of the decaying particle.
- **`lorentz_transform(P, v)`**: Applies a Lorentz boost to a four-vector $P$ in the direction of velocity $v$.
- **`estimate_detection_fraction(pi0_momenta, M, m1, m2)`**: Estimates the fraction of decays where at least one photon hits the detector.

## Results

The simulation produces geometric efficiency results for varying detector sizes and distances. For example, using a detector with dimensions of $1\,m \times 1\,m$ positioned $10\,m$ downstream, the geometric efficiency was found to be approximately $0.36$ for high-energy pions.

## How to Run

1. Clone the repository.
2. Ensure you have the required packages installed (e.g., Python, NumPy, Matplotlib).
3. Run the Jupyter notebook (`project_partA.ipynb`) for interactive analysis or compile the LaTeX files for a detailed report.

## Dependencies

- Python 3.x
- NumPy
- Pandas
- Matplotlib
- Jupyter Notebook
- LaTeX (for document compilation)

## Conclusion

This project provides insights into the decay dynamics of neutral pions and the effectiveness of detection methods in high-energy physics experiments. The results highlight the impact of kinematic conditions on the decay products' detectability.

## License

This project is licensed under the MIT License.