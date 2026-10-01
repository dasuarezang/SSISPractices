# SSISPractices

My MATLAB lab work for **SSIS** (*Senyals i Sistemes*), a signals and systems course in Telecommunications Engineering at UPC.

The scripts work through the core ideas of the course in practice: convolution, the Fourier transform, windowing, sampling and filtering. They end with a real use case: pulling individual stations out of a recorded radio signal.

Comments and plot titles are in Catalan and Spanish.

## Contents

| Folder | Topic | Highlights |
|---|---|---|
| `p0/` | Introduction to MATLAB | Functions (`nc_quadratic_formula`), loading an audio file and computing its length, maximum, mean and energy |
| `p2/` | Convolution and LTI systems | Discrete (`nc_convD`) and analog (`nc_convA`) convolution, an integrator system, pulse generators |
| `p2bis/` | Fourier transform | Spectra in linear scale and in dB, comparing windows, the effect of nonlinear systems (`sign(x)`, `abs(x)`) on a cosine |
| `p3/` | Discrete-time Fourier transform and filtering | Spectrum of windowed cosines (computed and analytical), audio spectra, **demodulating three stations from a radio recording** with a windowed filter |
| `p4/` | Sampling | Nyquist criterion, analytical vs numerical transform of `e^(-a\|t\|)` |
| `p6/` | Discrete signals | Sampling cosines and studying them in time and frequency |

The helper functions follow the course naming: `nc_*` for course functions and `*_ds_jm` for our group's versions.

> Lab sessions 1 and 5 are not in this repository.

## Running

Open MATLAB (or GNU Octave, which runs most of the scripts), move into a lab folder and run any exercise:

```matlab
cd p3
ej3
```

Each `ej*.m` script uses the helper functions and audio files in its own folder.

`.asv` files are MATLAB autosaves and `CalculaTF.p` is a precompiled function provided by the course.
