#!/bin/bash

distanceLayer=0.1
curdir=$(pwd)

for f in $curdir/*

do [ -d $f ] &&

       cd "$f" &&

       echo Entering into $f &&
       
       echo ${PWD##*/} &&

       ## copy the template case files

       cp -r ../preparingFolder/prepareCase/settingFromRe14E3/* ./  &&
       howManyLayer=$((echo "${PWD//Layer}") | cut -d'_' -f 3 ) &&

       ## do the math to calculate the length of the cylinder
       lengthOfCylinder=`echo "$howManyLayer*$distanceLayer" | bc | cut -d'.' -f1`  &&

       sed -e "s/LENGTH/$lengthOfCylinder/g"  ./system/forceCoeffs \
	   > ./system/forceCoeffs.bak &&
       mv -f ./system/forceCoeffs.bak ./system/forceCoeffs &&
       echo $lengthOfCylinder
done
