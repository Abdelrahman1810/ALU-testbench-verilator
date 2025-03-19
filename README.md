# ALU Testbench using Verilator & VPW

This repository provides a **Verilator-based** testbench for an **ALU (Arithmetic Logic Unit)**, using **VPW (Verilator Python Wrapper)**. It includes a Python testbench that verifies various ALU operations.

## 📌 Features
- Implements an **8-bit ALU** supporting:
  - `AND`, `OR`, `XOR`
  - `ADD`, `SUB`, `MULT`
  - `BYPASS_A` (high priority), `BYPASS_B` (low priority)
  - `SHIFT` (left/right based on `dir`)
  - `ROTATE` (left/right based on `dir`)
- **VPW-based testbench** to automate verification.
- **Bash script (`setup_and_run.sh`)** to install dependencies and run tests automatically.
- Uses **Verilator** for simulation and **GTKWave** for waveform viewing.

---

## 🚀 Setup & Installation

### 1️⃣ Prerequisites
Ensure your system has **Ubuntu** (or a compatible Linux distribution) and that you have `git` installed.

```sh
sudo apt update
sudo apt install git -y
```

### 2️⃣ Clone the Repository

```sh
git clone <REPOSITORY_URL>
cd <REPOSITORY_NAME>
```
### 3️⃣ Run the Setup Script
This will install dependencies, extract the virtual environment, and run the testbench.

```sh
chmod +x setup_and_run.sh
./setup_and_run.sh
```

## 📜 File Structure
```
📂 ALU-Testbench/
│── 📂 example/             
│── ├── ALU.py              # python testbench
│── ├── 📂 hdl/
│── ├── │── ALU.SV          # design file (systemverilog)
│── ├── setup_and_run.sh    # Bash script to automate installation & test execution
│── ├── README.md           # This documentation file
│── ├── venv.tar.gz         # Compressed virtual environment
│── ├── Verilator.pdf       # Verilator Documentation
```

## 🛠 Running the Testbench

Once the setup is complete, you can manually re-run the testbench:

```sh
source ~/venv/bin/activate   # Activate the Python virtual environment
cd example
./ALU.py               # Run the ALU testbench
```
## To analyze simulation waveforms, use:

```sh
gtkwave ALU.vcd
```

## 📝 Notes

- If you modify the ALU design (ALU.v), you need to recompile it with Verilator.
- The Bash script (setup_and_run.sh) automates everything, so you don’t have to install dependencies manually.
- The virtual environment (venv) is extracted and set up automatically.

## 🤝 Contributing

Feel free to fork this repository and submit pull requests! Any enhancements to the testbench or ALU design are welcome.


## ⚖️ License
This project is open-source under the MIT License.

## 🙌 Acknowledgments
Special thanks to **[Mr.Martini](https://www.linkedin.com/in/berin-martini/)** for their valuable help and contributions to this project!

---
