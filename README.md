# SLRILEEMPEEMAnalysis
Igor Pro functions for helping analyzing LEEM/PEEM data.
It can be used for extracting low-energy electron microscopy (LEEM) and photoelectron emission microscopy (PEEM) data. Image Loading package can extract header (i.e. micrometer x-y, temperature, OBJ, STV, and FOV) from Elmitec's proprietary .dat image format.
The functionalities are divided in 4 parts:
1. LEEM/PEEM image loading
  - Load Elmitec proprietary .dat files into image waves
  - Browsing
  - Extraction of header info.
  - Set scale according to the FOV
  - Stitching images into a larger one.
2. NEXAFS data
  - Currently only support SLRI's LEEM/PEEM format
  - Load and display multiple NEXAFS spectra (different ROIs, or different scans)
  - Immediately display I0-normalized spectra
  - Automatic recipe for normalization
  - Recipe modifications
3. Dispersive XPS in PEEM
  - Automatic searching for the dispersive line position with manual adjust
  - Multiple data extraction from different positions along the dispersive line
  - Dispersion factor adjustment
  - Zero point energy adjustment
4. Imaging XPS in PEEM
  - Fit spectra pixel by pixel (better used with some binning)
  - Currently supported 2 XPS peaks and secondary-electron yield cut-off (for workfunction mapping)
  - Display up to six extracted parameter mapping
  - More fitting modes, including NEXAFS, to be added in the future development
  - Isochromaticity correction with fine adjustment (x,y,intensity,size,rotation) to correct peak position over the image field of view.
  - A display of histogram for the parameter maps.
