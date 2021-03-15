# draw_uvvis

This repo contains instructions to draw UV-VIS spectra from computational chemistry methods

## Descriptions

An UV-VIS spectra can be drawn from:

1. Excitation energy

    and

2. Oscillation strength

both can be obtained from TD-DFT (or any other excited state) calculations.

***NOTE:***
    Gaussian (or Lorentzian) brodens in *`energy`*, not *`wavelength`*.

## Physical constants and a conversion factor

To convert wavelength(nm) to energy(eV), derive from fundamental physical constants. Each constants can be obtained from NIST.<sup>[ref.](##References)1</sup>

```python
c = 299792458           # speed of light in vacuum m/s;
h = 6.626070040e-34     # planck constant J*s
m2nm = 1e-9             # meter to nanometer
ev2j = 1.6021766208e-19 # electon volt J
```

Thus, conversion factors are:

```python
nm2ev = 1239.841973964072/nm
ev2nm = 1239.841973964072/ev
```

## References

1. https://physics.nist.gov/cuu/Constants/
