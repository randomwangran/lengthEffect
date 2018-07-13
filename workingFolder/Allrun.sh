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

# curdir=$(pwd)

#     for f in $curdir/*

#         do [ -d $f ] &&

#             cd "$f" &&

#             echo Entering into $f &&

#                {
# 		   #cp ../../preparingFolder/prepareScript/cpTest.sh ./
# 		   #sh cpTest.sh
#   		   #cp -f ../../preparingFolder/prepareScript/cpWithVariable.sh ./
# 		   #sh cpWithVariable.sh
# 		   #
# 		   #sbatch --job-name=lengthEffect --output=test_%N_%J.log ./mp2NewPreRunScript.pbs pisoFoam
# 		   cp -f ../../preparingFolder/prepareScript/checkMesh.pbs ./ &&
# 		   sbatch --job-name=checkMesh --output=checkMesh_%N_%J.log ./checkMesh.pbs checkMesh
# 	       }

#        done;

## gather jobinformation
# cd /home/superran/scratch/lengthEffect/workingFolder/case_z_100Layer
# echo "I am in: " > log.jobInfo
# pwd >> log.jobInfo
# sacct -j 13699 --format=jobid,elapsed,ncpus,AveRSS,maxrss,AveVMSize,reqmem >> log.jobInfo
# echo "Case mesh contains " >> log.jobInfo
# cat log.checkMesh | grep cells: >> log.jobInfo
# echo "=======================================================" >> log.jobInfo


# cd /home/superran/scratch/lengthEffect/workingFolder/case_z_20Layer
# echo "I am in: " > log.jobInfo
# pwd >> log.jobInfo
# sacct -j 13700 --format=jobid,elapsed,ncpus,AveRSS,maxrss,AveVMSize,reqmem >> log.jobInfo
# echo "Case mesh contains " >> log.jobInfo
# cat log.checkMesh | grep cells: >> log.jobInfo
# echo "=======================================================" >> log.jobInfo

# cd /home/superran/scratch/lengthEffect/workingFolder/case_z_40Layer
# echo "I am in: " > log.jobInfo
# pwd >> log.jobInfo
# sacct -j 13701 --format=jobid,elapsed,ncpus,AveRSS,maxrss,AveVMSize,reqmem >> log.jobInfo
# echo "Case mesh contains " >> log.jobInfo
# cat log.checkMesh | grep cells: >> log.jobInfo
# echo "=======================================================" >> log.jobInfo


# cd /home/superran/scratch/lengthEffect/workingFolder/case_z_60Layer
# echo "I am in: " > log.jobInfo
# pwd >> log.jobInfo
# sacct -j 13702 --format=jobid,elapsed,ncpus,AveRSS,maxrss,AveVMSize,reqmem >> log.jobInfo
# echo "Case mesh contains " >> log.jobInfo
# cat log.checkMesh | grep cells: >> log.jobInfo
# echo "=======================================================" >> log.jobInfo

# cd /home/superran/scratch/lengthEffect/workingFolder/case_z_80Layer
# echo "I am in: " > log.jobInfo
# pwd >> log.jobInfo
# sacct -j 13703 --format=jobid,elapsed,ncpus,AveRSS,maxrss,AveVMSize,reqmem >> log.jobInfo
# echo "Case mesh contains " >> log.jobInfo
# cat log.checkMesh | grep cells: >> log.jobInfo
# echo "=======================================================" >> log.jobInfo


# ## report into one file
# cat /home/superran/scratch/lengthEffect/workingFolder/case_z_100Layer/log.jobInfo >> /home/superran/scratch/lengthEffect/workingFolder/log.alljobInfo
# cat /home/superran/scratch/lengthEffect/workingFolder/case_z_20Layer/log.jobInfo >> /home/superran/scratch/lengthEffect/workingFolder/log.alljobInfo
# cat /home/superran/scratch/lengthEffect/workingFolder/case_z_40Layer/log.jobInfo >> /home/superran/scratch/lengthEffect/workingFolder/log.alljobInfo
# cat /home/superran/scratch/lengthEffect/workingFolder/case_z_60Layer/log.jobInfo >> /home/superran/scratch/lengthEffect/workingFolder/log.alljobInfo
# cat /home/superran/scratch/lengthEffect/workingFolder/case_z_80Layer/log.jobInfo  >> /home/superran/scratch/lengthEffect/workingFolder/log.alljobInfo



# ## continue run 100 layer cases

# cd /home/superran/scratch/lengthEffect/workingFolder/case_z_100Layer
# sbatch --job-name=100LayerContinue --output=continuePreRun_%N_%J.log ./continueRun.pbs pisoFoam

## add new cases
## same length in the span-wise direction
## delta is 0.05 but double the number of the layers

curdir=$(pwd)

    for f in $curdir/*

    ## although no big issue this time
    ## forget to exclude the old cases
        do [ -d $f -a $f != '/home/superran/scratch/lengthEffect/workingFolder/case_z_100Layer' -a $f != '/home/superran/scratch/lengthEffect/workingFolder/case_z_80Layer' -a $f != '/home/superran/scratch/lengthEffect/workingFolder/case_z_60Layer' -a $f != '/home/superran/scratch/lengthEffect/workingFolder/case_z_40Layer' -a $f != '/home/superran/scratch/lengthEffect/workingFolder/case_z_20Layer' ] &&

            cd "$f" &&

            echo Entering into $f &&

               {
                   # echo 'testNest'
  		   #cp -f ../../preparingFolder/prepareScript/mp2NewPreRunScript.pbs ./
		   #rm test.pbs
		   #sh cpWithVariable.sh
		   sbatch --job-name=lenEffDecreDistanceIncNodes --output=lenEffDecreDistanceIncNodes_%N_%J.log ./mp2NewPreRunScript.pbs pisoFoam
	       }

       done;
