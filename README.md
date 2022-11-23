# Scitools-Understand-software-metrics-collector
Small Script to make your life easier with Understand Scitools - it will help you to collect software metrics from GitHub Java projects.

# Steps:

1- Download Understand from SciTools

2- Add und to environment variables

3- Clone GitHub Java project

4- Collect all commits' hash

5- Run a bash script called "metrics_collector.sh

# 1- Download Understand from SciTools
  download link : https://www.scitools.com/
  
# 2- Add und to environment variables
  in windows it's automatically added , you can check by running und command on your console.
  
  in mac-os you need to add it to your environment variables :
  
    a - type nano .zshrc
    
    b - export PATH="/Applications/Understand.app/Contents/MacOS:/opt/homebrew/opt/curl/bin:$PATH"
    
    c - save
  
# 3- Clone GitHub Java project 
     create folder in your desktop and clon inside it github repo
     
     for example : https://github.com/pumadong/cl-roadshow
     
# 4- Collect all commits' hash
     add to your folder txt file commits.txt
    
# 5- Run a bash script called "metrics_collector.sh"     
   download this script and add it to your folder .
   run command sh metrics_collector.sh
   
     
     
    

