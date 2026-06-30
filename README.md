# EpiloG Saturator

<p align="center">
  <img
    src="https://github.com/user-attachments/assets/e82c6401-2a7b-4486-ac93-021593ab9259"
    alt="EpiloG Saturator UI"
    width="452">
</p>

A lightweight analog saturation plugin built with **Cabbage** and **Csound**.

EpiloG Saturator is a simple audio saturation plugin designed to add warmth, soft harmonic distortion, vintage character, and subtle high-frequency enhancement. It was created as my very first VST plugin project while learning audio DSP using Csound.

> **Developer:** EpiloG

---


## Features

* 🎚️ Adjustable drive amount
* 📻 Analog-style tone filtering
* 📼 Vintage coloration
* ✨ Airy high-frequency enhancement
* ⚡ Lightweight CPU usage

---

## Built With

* Cabbage
* Csound

---

## Requirements

This plugin requires **Csound** to be installed because the DSP engine is powered by Csound.

### Install Csound

Download the latest version from:

https://csound.com/download.html

After installing Csound, install Cabbage if you want to edit or compile the project.

---

## How to Build

1. Install Csound.
2. Install Cabbage.
3. Open the `.csd` project in Cabbage.
4. Choose **Export Plugin**.
5. Build as:

   * VST3
   * VST
   * AU (macOS)
   * Standalone

---

## DSP Overview

The processing chain is intentionally simple:

```
Input
   │
   ▼
Input Gain
   │
   ▼
tanh() Soft Clipper
   │
   ▼
Analog Tone Filter
   │
   ▼
Vintage Color
   │
   ▼
Airy High Shelf
   │
   ▼
Output Compensation
   │
   ▼
Output
```

---

## Known Limitations

* Basic DSP implementation
* No oversampling
* No GUI resizing
* No preset management
* No input/output meters

This project is intended as a learning exercise and the foundation for future audio plugins.

---

## Author

**EpiloG**

This is my first VST plugin built using Cabbage and Csound as part of my journey into audio software development.
