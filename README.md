# 📝 Verilog Register File (8x16)

## 📌 Project Overview
This project implements an **8x16 Register File** in **Verilog HDL**.  
The register file is a small memory module consisting of **8 registers**, each **16 bits wide**, that supports **synchronous read/write operations** with asynchronous reset.

---

## ⚙️ Specifications
- **Register Count:** 8  
- **Register Width:** 16 bits  
- **Read Data Bus (RdData):** 16 bits  
- **Write Data Bus (WrData):** 16 bits  
- **Address Bus (Address):** 3 bits (used for both read and write)  
- **Control Signals:**
  - `WrEn` → Enables Write  
  - `RdEn` → Enables Read  
  - `CLK` → Operations occur on **positive clock edge**  
  - `RST` → Asynchronous **active-low reset**

---

## 🛠️ Features
- Supports **one operation at a time** (either read or write).  
- **Asynchronous Reset** clears all registers to zero.  
- Parameterized design for flexibility (configurable width & depth).  
- Comprehensive **testbench** with multiple read/write scenarios.  

---

## 📂 Project Structure

