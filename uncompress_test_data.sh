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

#!/bin/bash

geo_data_path=$GEOIPS_BASEDIR/test_data/test_data_smap/bg_data/

# First untar, then bunzip
for subdir in ahi_20210926_0900; do
    echo ""
    date -u
    data_path=$geo_data_path/$subdir
    if [[ ! -e $data_path ]]; then
        echo "tar -xzf $data_path.tgz -C $geo_data_path"
        tar -xzf $data_path.tgz -C $geo_data_path
    fi
    date -u
    if ls $data_path/*.bz2 >& /dev/null; then
        echo "bunzip2 $data_path/*.bz2"
        bunzip2 -f $data_path/*.bz2
    fi
    date -u
done
