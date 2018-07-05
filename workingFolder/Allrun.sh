#!bin/bash

## Useful commands #1:
### project structure:
# .
# ├── Allrun.sh
# └── case1
#  └── 0
#   └── dummy
#  └── processor1
#   └── 0
#   └── 1
#   └── 2
#   └── constant

# the following code will delete the time data in processor1 folder
# except 0 20 and constant folder
# It is useful when the case is being reconstructed.


## copy case setting script to the working directories
## Thu Jul  5 12:07:36 EDT 2018

# curdir=$(pwd)

#     for f in $curdir/*

#         do [ -d $f ] &&

#             cd "$f" &&

#             echo Entering into $f &&

#                {
# 		   cp ../../preparingFolder/prepareScript/cpWithVariable.sh ./
# 	       }

#        done;

## execute cpWithVariable.sh
## Thu Jul  5 12:11:10 EDT 2018

curdir=$(pwd)

    for f in $curdir/*

        do [ -d $f ] &&

            cd "$f" &&

            echo Entering into $f &&

               {
		   sh ./cpWithVariable.sh
	       }

       done;
