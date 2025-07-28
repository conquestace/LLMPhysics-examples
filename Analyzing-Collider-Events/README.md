# Analyzing Collider Events: A Particle Physics Data Analysis Example

This project is a hands-on demonstration of a fundamental analysis technique in experimental particle physics: determining the number of neutrino species by analyzing simulated collider data. Using a simplified, background-free dataset, we explore Z boson decays to compare "visible" events (muon-antimuon pairs) with "invisible" events (neutrino-antineutrino pairs).

The analysis serves as an educational example of how physicists use data, kinematic cuts, and the principles of the Standard Model to probe the fundamental properties of the universe.

## Physics Background

The Z boson is one of the fundamental particles that mediate the weak force. It is unstable and decays very quickly into other particles. According to the Standard Model, the Z boson decays "democratically" into pairs of fermions and antifermions (like electrons, muons, or neutrinos).

This analysis focuses on two types of decay channels:
1.  **Visible Decays ($Z \to \mu^+\mu^-$):** The Z boson decays into a muon and an antimuon. These are charged particles that leave tracks in a particle detector, making them "visible."
2.  **Invisible Decays ($Z \to \nu\bar{\nu}$):** The Z boson decays into a neutrino and an antineutrino. Neutrinos are electrically neutral and interact very weakly, so they pass through detectors without a trace, making them "invisible."

The probability (or "branching ratio") of the Z boson decaying into any single charged lepton pair (like $\mu^+\mu^-$) is known. The probability of it decaying into any single neutrino-antineutrino pair is also known and is approximately twice that of the charged lepton decay.

If there are $N_\nu$ types (or "flavors") of neutrinos, the total ratio of invisible to visible decays will be:
$$ R = \frac{\text{Count}(Z \to \text{all } \nu\bar{\nu})}{\text{Count}(Z \to \mu^+\mu^-)} \approx 2 \times N_\nu $$
By measuring the ratio $R$ from experimental data, we can estimate the number of neutrino flavors:
$$ N_\nu = \frac{R}{2} $$
In our universe, we know there are **3** flavors of light neutrinos. This project uses this principle to analyze data from both "our" universe and a hypothetical "other" universe.

## The Dataset

The project uses two simplified datasets stored in `.npz` format:
*   `sm_sample.npz`: A simulation from "our" universe, based on the Standard Model (SM), where we expect to find $N_\nu \approx 3$.
*   `bsm_sample.npz`: A simulation from a hypothetical "other" universe with potentially Beyond the Standard Model (BSM) physics.

Each file contains a series of collision "events." Each event is a Python dictionary containing the four-momenta (`[E, px, py, pz]`) of the final-state particles:
*   `'jet'`: The four-momentum of the hadronic jet produced alongside the Z boson.
*   `'muons'`: A list containing the four-momenta of the two muons (this key is only present in visible decay events).

The dataset is idealized and contains no background events from other processes.

## Methodology

The analysis is performed in the `AnalyzingColliderEvents.ipynb` Jupyter Notebook and follows these key steps:

### 1. Initial Estimate (Naive Count)
A first, simple estimate is made by looping through the data and counting the number of events with muons (visible) and without muons (invisible). This provides a baseline result but is subject to noise and mismeasurement.

### 2. Signal Validation and Refinement (Kinematic Cuts)
To improve the accuracy of our measurement, we apply **kinematic cuts**—a standard technique to select high-quality events and reject noise.

*   **Invariant Mass:** We first validate that our visible events are indeed from Z boson decays by calculating the invariant mass of the muon pairs. The resulting histogram shows a clear peak around the Z boson's mass (~91 GeV), confirming our signal source.
*   **Missing Transverse Energy (MET):** Invisible events are identified by a significant momentum imbalance in the transverse plane, known as MET. The presence of a high-pT jet allows us to infer a large MET when the Z boson decays to neutrinos.
*   **Applying Cuts:** We refine our selection of visible events by applying the following cuts:
    *   **Muon $p_T > 20$ GeV:** Selects muons with high transverse momentum, characteristic of Z decays.
    *   **Muon $|\eta| < 2.5$:** Ensures muons are within the central region of the detector for reliable measurement.
    *   **Invariant Mass Window:** Only events where the muon pair's invariant mass is between 80 and 100 GeV are kept, isolating the Z boson resonance peak.

## Key Results

After applying the kinematic cuts, the analysis yields the following estimates for the number of neutrino flavors:

*   **"Our Universe" (SM Sample):**
    *   **$N_\nu \approx 3.15$**
    *   This result is highly consistent with the known value of 3, validating that our analysis method is sound.

*   **"The Other Universe" (BSM Sample):**
    *   **$N_\nu \approx 4.26$**
    *   This result is significantly different from 3. It strongly suggests that the physics in this other universe is different from our own, pointing to the existence of a fourth "sterile" neutrino or some other form of new physics.

## How to Run the Analysis

1.  **Clone the Repository:**
    ```bash
    git clone <repository-url>
    cd Analyzing-Collider-Events
    ```

2.  **Install Dependencies:**
    This project requires Python with `numpy` and `matplotlib`.
    ```bash
    pip install numpy matplotlib
    ```

3.  **Run the Jupyter Notebook:**
    Launch Jupyter and open the `AnalyzingColliderEvents.ipynb` notebook to see the full analysis, including code, explanations, and plots.
    ```bash
    jupyter notebook AnalyzingColliderEvents.ipynb
    ```