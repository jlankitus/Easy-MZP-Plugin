import os  
import shutil
from os import path
from distutils.dir_util import copy_tree

sourceList = []
destinationList = []
countVar = 0

#Please note that this script is currently setup to work for 3DS Max 2022. You'll need to update your own version.
versionIs = "2022"

localDir = path.expandvars(r'%LOCALAPPDATA%')

sourceList.append (localDir + "/Autodesk/3dsMax/" + versionIs + " - 64bit/ENU/temp/Remesher/datasets/")
destinationList.append (localDir +"/Autodesk/3dsMax/" + versionIs + " - 64bit/ENU/scripts/Remesher/datasets/")
countVar +=1

sourceList.append (localDir + "/Autodesk/3dsMax/" + versionIs + " - 64bit/ENU/temp/Cleaner/cleaner_v25/")
destinationList.append (localDir + "/Autodesk/3dsMax/" + versionIs + " - 64bit/ENU/scripts/Cleaner/cleaner_v25/")
countVar +=1

sourceList.append (localDir + "/Autodesk/3dsMax/" + versionIs + " - 64bit/ENU/temp/InstanceTool/Icons/")
destinationList.append (localDir + "/Autodesk/3dsMax/" + versionIs + " - 64bit/ENU/usericons/")
countVar +=1

sourceList.append (localDir + "/Autodesk/3dsMax/" + versionIs + " - 64bit/ENU/temp/Poliigon/icons/")
destinationList.append (localDir + "/Autodesk/3dsMax/" + versionIs + " - 64bit/ENU/usericons/")
countVar +=1

sourceList.append (localDir + "/Autodesk/3dsMax/" + versionIs + " - 64bit/ENU/temp/Easy Peasy 2.60/Presets/")
destinationList.append (localDir + "/Autodesk/3dsMax/" + versionIs + " - 64bit/ENU/scripts/EasyPeasy2/Presets/")
countVar +=1

sourceList.append (localDir + "/Autodesk/3dsMax/" + versionIs + " - 64bit/ENU/temp/TopoLogiK/icons/")
destinationList.append (localDir + "/Autodesk/3dsMax/" + versionIs + " - 64bit/ENU/usericons/")
countVar +=1

sourceList.append (localDir + "/Autodesk/3dsMax/" + versionIs + " - 64bit/ENU/temp/CustomScripts/Icons/")
destinationList.append (localDir + "/Autodesk/3dsMax/" + versionIs + " - 64bit/ENU/usericons/")
countVar +=1

sourceList.append (localDir + "/Autodesk/3dsMax/" + versionIs + " - 64bit/ENU/temp/Octopus 2.0/Octopus/")
destinationList.append (localDir + "/Autodesk/3dsMax/" + versionIs + " - 64bit/ENU/scripts/Octopus/")
countVar +=1

i = 0
while i < countVar:
    #print (i) - This can be used to test that the while loop is active and making it through each pass of the lists above.
    try:
        copy_tree(sourceList[i], destinationList[i])
        #Except - Pass: This quelches warnings about copying directories that already exist in the target location.
        #Comment out the following two lines when adding in directories as thrown errors will help you debug.
        #Revert once your copies function correctly.
    except OSError:
        pass
    i += 1
else:
    print ("Directories processed:"), countVar
    print("Python -> Maxscript")