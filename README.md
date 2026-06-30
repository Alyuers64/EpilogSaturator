# EpiloG Saturator

A lightweight analog saturation plugin built with **Cabbage** and **Csound**.

SoftTube is a simple audio saturation plugin designed to add warmth, soft harmonic distortion, vintage character, and subtle high-frequency enhancement. It was created as my very first VST plugin project while learning audio DSP using Csound.

> **Developer:** EpiloG

---

## Features

* 🎛️ Soft analog saturation
* 🎚️ Adjustable drive amount
* 📻 Analog-style tone filtering
* 📼 Vintage coloration
* ✨ Airy high-frequency enhancement
* ⚡ Lightweight CPU usage
* 🎵 Stereo processing

---

## Controls

### Saturation

Controls the amount of soft clipping using the `tanh()` waveshaper.

* Low values → clean sound
* High values → warmer and more saturated

---

### Analog Feels

Simulates an analog-style frequency response by gradually reducing the high frequencies.

* 0 → full bandwidth
* 100% → darker analog character

---

### Vintage

Adds additional drive while making the tone slightly darker, producing a vintage-style coloration.

---

### Airy

Adds a gentle high-frequency enhancement to restore brightness after saturation.

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

## Project Structure

```text
SoftTube.csd
README.md
LICENSE
```

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

## License

This project is released under the MIT License.

Feel free to modify, learn from, and improve the code.

---

## Author

**EpiloG**

This is my first VST plugin built using Cabbage and Csound as part of my journey into audio software development.
