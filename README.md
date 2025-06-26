# 🧠 SystemVerilog FSM Projects

This repository contains synthesizable FSM designs in **SystemVerilog**, built as part of my hands-on learning and upskilling for RTL/ASIC Design and CPU Architecture roles. Each project includes clean RTL, testbenches, and simulation outputs.

---

## ✅ Projects

### 1. 🚦 Traffic Light Controller (Moore FSM)
- 3-state Moore machine cycling between RED → GREEN → YELLOW.
- Inputs: `clk`, `reset`
- Outputs: `red`, `green`, `yellow`
- RTL uses `typedef enum`, `always_ff`, and `always_comb`.

> 📁 [`traffic_light/`](./traffic_light)

---

### 2. 🔍 1011 Sequence Detector (Mealy FSM)
- Detects overlapping `1011` sequences on serial input.
- Outputs `detected = 1` during transition on successful match.
- Demonstrates Mealy-style FSM transitions.

> 📁 [`seq_1011/`](./seq_1011)

---

## 🔧 Tools Used
- Language: SystemVerilog (IEEE 1800)
- Simulated using: ModelSim / Vivado / EDA Playground
- Projects designed for synthesis and FPGA compatibility

---

## 📌 Future Plans
- Elevator Controller FSM  
- UART Receiver FSM  
- Parameterized FSM generator module

---

## 👨‍💻 Author

**Anish Apte**  
Master's Student, Electrical Engineering  
[LinkedIn](https://linkedin.com/in/anish-apte) · [GitHub](https://github.com/your-username)
# systemverilog-fsms
RTL designs of FSMs in SystemVerilog
