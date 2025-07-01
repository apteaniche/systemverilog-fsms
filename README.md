# 🧠 SystemVerilog FSM Projects

This repository contains synthesizable **Finite State Machine (FSM)** designs in **SystemVerilog**, built as part of my hands-on upskilling for roles in **RTL/ASIC Design** and **CPU Architecture**. Each module is accompanied by a testbench and simulation output.

---

## ✅ Projects

### 1. 🚦 Traffic Light Controller (Moore FSM)
A simple Moore-style FSM that cycles between RED → GREEN → YELLOW in a fixed pattern.

**Features:**
- 3-state FSM using `typedef enum`
- Synthesizable RTL using `always_ff` and `always_comb`
- Testbench with clock/reset and signal monitoring

**Design Details:**
- Inputs: `clk`, `reset`
- Outputs: `red`, `green`, `yellow`
- FSM Type: Moore machine

📁 [`traffic_light/`](./traffic_light)

---

### 2. 🔍 1011 Sequence Detector (Mealy FSM)
Detects overlapping `1011` patterns on a serial input line. Uses a Mealy FSM approach with output transitions dependent on both state and input.

**Features:**
- Detects pattern `1011` with overlapping detection
- Uses Mealy FSM design with conditional output
- Includes testbench with multiple test vectors

**Design Details:**
- Inputs: `clk`, `reset`, `in`
- Output: `detected`
- FSM Type: Mealy machine

📁 [`seq_1011/`](./seq_1011)

---

### 3. 🚪 Elevator Controller FSM (Moore FSM)
Controls a 3-floor elevator system. Responds to floor requests, moves in the appropriate direction, and controls door status.

**Features:**
- Services floor requests at 0, 1, and 2
- Prioritizes requests in current direction
- Door opens/closes at requested floor
- Multi-output control with direction, door status, and floor tracking

**Design Details:**
- Inputs: `clk`, `reset`, `req0`, `req1`, `req2`
- Outputs: `current_floor[1:0]`, `door_open`, `direction`
- FSM Type: Moore machine
- Verified with comprehensive testbench

📁 [`elevator/`](./elevator)

---

## 🔧 Tools Used

- Language: SystemVerilog (IEEE 1800)
- Simulated using: Vivado, ModelSim, or EDA Playground
- Designed to be synthesizable and FPGA-compatible

---

## 💡 Learning Objectives

- Master FSM design in SystemVerilog using `typedef enum`, `always_ff`, and `always_comb`
- Practice Mealy and Moore styles
- Gain experience writing reusable testbenches
- Simulate real-world control logic modules

---

## 👨‍💻 Author

**Anish Apte**  
Graduate Student – Electrical & Computer Engineering  
🔗 [LinkedIn](https://linkedin.com/in/anish-apte) · 🛠 [GitHub](https://github.com/apteaniche)

---

## 📌 Upcoming Additions

- UART Receiver FSM  
- AXI4-lite test IP  
- Parameterized FSM generator  
- FSM-to-RTL automation script (Python-based)


