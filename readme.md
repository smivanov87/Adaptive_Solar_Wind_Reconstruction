# Adaptive Solar Wind Reconstruction
MATLAB tools for adaptive reconstruction of missing solar-wind parameters from geomagnetic indices, enabling gap filling of up to 1000 hours in the hourly OMNI2 dataset.
# Author
Serhii M. Ivanov
# Repository Contents
## File	Description
- readme.md
- LICENSE
- Kpoly2.m	Generates a multivariate polynomial design matrix up to a specified polynomial degree.
 -exp2eq.m	Converts an exponent matrix into symbolic/LaTeX polynomial expressions.
- polyexp.m	Generates exponent combinations for multivariate polynomial terms.
- fillgaps.m	Utilities for filling gaps in solar-wind time-series data.
- fillgapsREGa2.m	Adaptive method to filling gaps in the data.
- kg_terms.m	Generates terms used by the reconstruction methodology.
- main_AdaptiveREG.m - Start here. Main script for running the adaptive reconstruction workflow.
# References and Data Sources
## OMNI2 Solar-Wind Data
The solar-wind data used in this work are based on the OMNI2 dataset. For details on the OMNI2 dataset and the processing of hourly solar-wind measurements, see:
King, J. H., & Papitashvili, N. E. (2005). Solar wind spatial scales in and comparisons of hourly Wind and ACE plasma and magnetic field data. Journal of Geophysical Research: Space Physics, 110(A2), A02104. https://doi.org/10.1029/2004JA010649

The OMNI data were obtained from the GSFC/SPDF OMNIWeb interface at https://omniweb.gsfc.nasa.gov

Papitashvili, Natalia E. and King, Joseph H. (2020), "OMNI Hourly Data" [Data Set], 
NASA Space Physics Data Facility, https://doi.org/10.48322/1shr-ht18, Accessed on 05.10.2026

## Geomagnetic Indices
The Dst index was provided by the World Data Center (WDC) for Geomagnetism, Kyoto, via OMNI2 (http://wdc.kugi.kyoto-u.ac.jp/wdc/Sec3.html), while the Kp index was provided by GFZ Potsdam via OMNI2 (https://kp.gfz-potsdam.de/en/)

## Related Published Code
Ivanov, S. M., Jackman, C. M., Fogg, A. R., & Walker, S. J. (2026). Gap Filling in Solar Wind Time Series (Version v1.0.0) [Computer software]. Zenodo. https://doi.org/10.5281/zenodo.22181986

Repository URL 
https://github.com/smivanov87/Gap_Filling_in_Solar_Wind_Time_Series
