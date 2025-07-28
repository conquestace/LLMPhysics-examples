# Two-Body Decay Simulation: From Pions to Photons

This project is a computational exploration of a fundamental process in particle physics: the two-body decay of a neutral pion ($\pi^0$) into two photons ($\gamma\gamma$).

The primary goal is to calculate the **geometric efficiency** of a hypothetical particle detector and, more importantly, to demonstrate the dramatic and often counter-intuitive effects of **Special Relativity** on particle trajectories. This simulation serves as a perfect example of how computational physics allows us to build intuition for the rules that govern the high-energy universe.

## The Core Physics Problem: Where Do the Particles Go?

At first glance, a particle decay seems simple. A particle at rest explodes, and its products should fly out in random, opposite directions. The chance of one of those products hitting a small, distant detector should be very low.

**But what happens when the original particle is moving at nearly the speed of light?** Do the decay products still go in random directions, or does something else happen?

This simulation answers that question by comparing two key scenarios:
1.  **Isotropic Decay:** A theoretical calculation for a pion decaying at rest.
2.  **High-Energy Decay:** A simulation using a dataset of high-momentum pions, as they would be produced in a real collider experiment.

## Methodology: A 3-Step Simulation Pipeline

The simulation, implemented in Python with NumPy, follows a standard methodology used in particle physics research.

#### 1. Decay in the Pion's Rest Frame
We start in the simplest reference frame where the pion is stationary. In this frame, the physics is clean:
*   Energy and momentum are conserved.
*   The two photons are emitted back-to-back with equal energy.
*   The direction of emission is completely random (isotropic).

#### 2. Lorentz Boost to the Lab Frame
This is the crucial step that introduces relativity. In the lab, the pion is not at rest; it is moving at high velocity. We use a **Lorentz Transformation** to "boost" the photon four-momenta from the pion's rest frame into the laboratory's reference frame. This correctly models how the photons' energies and trajectories are observed by the detector.

#### 3. Propagation and Detection
We define a simple square detector positioned downstream from the decay point. After the Lorentz boost, we project the photons' trajectories and calculate whether one or both of them intersect the detector's surface. The fraction of total decays that result in at least one hit gives us the geometric efficiency.

## Key Results & Insight: Relativistic Beaming

The results reveal a stark and illuminating contrast between the two scenarios:

*   **Isotropic Decay (Pion at Rest):** For a $1m \times 1m$ detector at a distance of $10m$, the probability of detecting a photon from a stationary pion decay is very low. Our simulation confirms this, yielding a theoretical geometric efficiency of **~0.16%**.

*   **High-Energy Decay (Boosted Pions):** When we simulate high-energy pions from the provided dataset, the result is dramatically different. The geometric efficiency jumps to **~36%**—over 200 times higher!

This isn't an error; it's a fundamental consequence of special relativity known as **relativistic beaming** (or the "headlight effect"). When a particle moving near the speed of light decays, its decay products are not emitted randomly. Instead, they are focused into a tight cone in the forward direction. This beaming effect is critical in the design of real-world particle detectors and explains why our simulated efficiency is so much higher for energetic pions.

## How to Run the Code

1.  **Clone the Repository:**
    ```bash
    git clone <repository-url>
    cd Two-Body-Decay
    ```

2.  **Install Dependencies:**
    This project requires a standard scientific Python environment.
    ```bash
    pip install numpy pandas matplotlib jupyterlab
    ```

3.  **Run the Jupyter Notebook:**
    The complete simulation and analysis pipeline is contained in the `project_partA.ipynb` notebook.
    ```bash
    jupyter lab project_partA.ipynb
    ```

## Project Structure

*   `/code`: Contains the core Python scripts and functions for the simulation.
*   `/tex`: Contains the full, detailed scientific report written in LaTeX, along with the compiled PDF (`two-body-decay.pdf`).

## License

This project is licensed under the MIT License.