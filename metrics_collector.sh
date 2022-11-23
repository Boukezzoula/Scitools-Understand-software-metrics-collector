#!/bin/bash

repository=/Users/mac/Desktop/metrics_data_mining/cl-roadshow/ # The last bar is extremelly important
basename=$(basename $repository)

while read commit; do

  git --git-dir=${repository}.git --work-tree=${repository} reset --hard ${commit}

  echo $repository
			
  echo "Creating the project ${commit}..."
  und create -languages java ${commit}
  
  echo "Adding file to the commit: ${commit}.."
  
  und add $repository ${commit}
  
  echo "Analysing commit: ${commit}..."
  echo "./scitools/bin/linux64/und analyze -db ${commit}.udb"
  und analyze ${commit}.und

  echo "Adding metrics: ${commit}"   
  
  und settings -metrics CountClassCoupled PercentLackOfCohesion PercentLackOfCohesionModified  ${commit}.und

  und settings -metricsOutputFile results/${basename}_metrics_${commit}.csv ${commit}.und
  
  # Project settings
     
  echo "Calculating metrics ${commit}"
  und metrics ${commit}.und
			
  echo "Removing project files ${commit}"
  rm /Users/mac/Library/Application\ Support/SciTools/Db/${commit}
  
done < commits.txt
