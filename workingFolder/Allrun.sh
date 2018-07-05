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

# curdir=$(pwd)

#     for f in $curdir/*

#         do [ -d $f ] &&

#             cd "$f" &&

#             echo Entering into $f &&

#                {
# 		   sh ./cpWithVariable.sh
# 	       }

#        done;

## manual execute cpWithVariable.sh
# cd ./case_z_20Layer
# pwd
# sh cpWithVariable.sh
# cd ..
	
# cd ./case_z_40Layer
# pwd
# sh cpWithVariable.sh
# cd ..
	
# cd ./case_z_60Layer
# pwd
# sh cpWithVariable.sh
# cd ..
	
# cd ./case_z_80Layer
# pwd
# sh cpWithVariable.sh
# cd ..

# cd ./case_z_100Layer
# pwd
# sh cpWithVariable.sh
# cd ..

# echo "finsh"


## testing path

curdir=$(pwd)

    for f in $curdir/*

        do [ -d $f ] &&

            cd "$f" &&

            echo Entering into $f &&

               {
		   #cp ../../preparingFolder/prepareScript/cpTest.sh ./
		   #sh cpTest.sh
  		   #cp -f ../../preparingFolder/prepareScript/cpWithVariable.sh ./
		   sh cpWithVariable.sh
	       }

       done;



 		   


    
