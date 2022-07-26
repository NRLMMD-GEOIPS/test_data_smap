    # # # Distribution Statement A. Approved for public release. Distribution unlimited.
    # # # 
    # # # Author:
    # # # Naval Research Laboratory, Marine Meteorology Division
    # # # 
    # # # This program is free software:
    # # # you can redistribute it and/or modify it under the terms
    # # # of the NRLMMD License included with this program.
    # # # 
    # # # If you did not receive the license, see
    # # # https://github.com/U-S-NRL-Marine-Meteorology-Division/
    # # # for more information.
    # # # 
    # # # This program is distributed WITHOUT ANY WARRANTY;
    # # # without even the implied warranty of MERCHANTABILITY
    # # # or FITNESS FOR A PARTICULAR PURPOSE.
    # # # See the included license for more details.


# v1.5.1: 2022-07-14, geoips2->geoips, consolidate test outputs, update compress scripts

### Refactor
* **File modifications**
    * Update all instances of 'geoips2' with 'geoips'
    * Update all instances of 'GEOIPS2' with 'GEOIPS'
* **Test outputs**
    * Remove all test outputs from test data repo (move to source repos)
    * Add bdeck file for reference
    * Update uncompress/recompress test scripts for single tgz background file

### Documentation Updates
* Update \*.md Distro statement headers to use 4 spaces prefix rather than ### (formatting improvement)
* **README.md**
    * Add clone for config
    * Update test scripts to use $GEOIPS simplified direct test calls


# v1.4.1: 2022-01-21, add test dataset for testing coverage for pad_sect_xarrays and no coverage

### Major New Functionality
    * Added dataset for test case with coverage for pad_area_def and no coverage for area_def

# v1.4.0: 2022-01-12, remove test scripts

### Refactor
    * Remove test scripts directly within test_data_amsub
        * Keep all test scripts in source repos - reference source repo test scripts in README.md
    * Update .gitignore to ignore *diff_test_output_dir* rather than *diff_test*     


# v1.3.0: 2021-11-25, atcf->tc, remove satops

### Breaking Test Repo Updates
    * Update TC YAML metadata outputs
        * update output path to geoips_outdirs/preprocessed/tcwww
        * add sector_type: tc


# v1.2.5: 2021-11-18, moved test scripts from geoips2 to test_data_smap

###  Major New Functionality
    * Moved SMAP test scripts from geoips2/tests to test_data_smap/tests
        * smap_config.sh
        * smap.sh
        * test_all.sh


# v1.2.4: 2021-11-12, original_source_filenames, simplify README

### Breaking Test Repo Updates
    * Update metadata YAML outputs to include single original_source_filename with list of
        original_source_filenames

### Improvements
    * Simplify README installation and test instructions


# v1.2.3: 2021-11-05, SMAP text wind outputs

### Major New Functionality
    * sectored_text_tc SMAP outputs
    * unsectored_text_full SMAP outputs


# v1.2.2: 2021-10-25, update SMAP output for overlay functionality, and morning and afternoon overpasses

### Breaking Test Repo Updates
    * New test case for SMAP output (20210926, with background imagery available)
    * Test output now contains both morning and afternoon SMAP overpass

### Improvements
    * New uncompress_test_data.sh script to standardize dataset and output decompression for testing


# v1.2.1: 2021-10-05, Updated matplotlib/cartopy versions, removed automatic TC recentering for all products

### Breaking Test Repo Updates
    * Updated cartopy to 0.20.0 and matplotlib to v3.4.3
        * test repo outputs incompatible with matplotlib < 3.4.0 and cartopy < 0.19.0
        * Older versions have figures that are very slightly shifted from later versions
        * Exclusively a qualitative difference, but it *does* cause the test comparisons to fail
    * No longer recentering all TC outputs by default
        * standard outputs are *not* recentered as of 1.2.1 - test recentering separately from other functionality


# v1.2.0: Major backwards incompatible update

### Major New Functionality
    * Exhaustive test scripts with final return value of 0 for successful completion of all functionality
    * Initial geotiff output support
    * Initial full disk output support
    * Night Visible products
    * Recentering / sectoring updates
 
###  Improvements
    * YAML based product specifications (references colormaps, algorithms,
      interpolation routines, coverage checks, etc)
 
###  Bug fixes
    * Resolved sectoring issue, allowing complete center coverage
        * Previously when sectoring based on min/max lat/lon, any values outside the explicit
          requested values would be masked, causing masked data on non-square datasets when 
          good data was actually available for the entire requested region. Only drop rows outside
          requested range, do not mask data.

GEOIPS2-71 GEOIPS2-6
