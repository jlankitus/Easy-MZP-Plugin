--Script base by Jediah Lankitus
--Compacted and expanded by Ryan Amos

--Extract temp.zip and place the folder contents in your #temp directory. (C:/Users/<User>/AppData/Local/Autodesk/3dsMax/<Version> - 64bit/ENU/temp)
--The scripts detailed in these files are included with the created MZP (Orion Scripts - Github.mzp)
.
--Copy all script files and directories that you want to install to C:/Users/<User>/AppData/Local/Autodesk/3dsMax/<Version> - 64bit/ENU/temp.
--Adjust this file and the directoryCopies file to coincide with YOUR script files and directories.

(
scriptsFolder = (GetDir #userScripts)
iconsFolder = (GetDir #userIcons)

--Add custom directories here.
makeDir (scriptsFolder + "\Remesher") all:true
makeDir (scriptsFolder + "\Cleaner") all:true
makeDir (scriptsFolder + "\Snowball_Tools\InstanceTool") all:true
makeDir (scriptsFolder + "\MZP") all:true

scriptCount = 1
sourceArray =#()
destinationArray =#()

print "Installing package contents..."

--Declare each source and destination.

sourceArray [1] = GetDir #temp + "/directoryCopies.py"
destinationArray [1] = GetDir #publicExchangeStoreInstallPath + "/directoryCopies.py"

sourceArray[2] = GetDir #temp + "/manipulatorModeToggle.ms"
destinationArray[2] = GetDir #userScripts  + "/manipulatorModeToggle.ms"

sourceArray[3] = GetDir #temp + "/borderfill.mcr"
destinationArray[3] = GetDir #userScripts + "/borderfill.mcr"

sourceArray [4] = GetDir #temp + "/extend_borders.mse"
destinationArray [4] = GetDir #userScripts +"/extend_borders.mse"

sourceArray [5] = GetDir #temp + "/RacoonScripts_Extend_Borders.mcr"
destinationArray [5] = GetDir #userMacros + "/RacoonScripts_Extend_Borders.mcr"

sourceArray [6] = GetDir #temp + "/materialRemover.ms"
destinationArray [6] = GetDir #userScripts + "/materialRemover.ms"

sourceArray [7] = GetDir #temp + "/nonQuadSelector.mcr"
destinationArray [7] = GetDir #userMacros + "/nonQuadSelector.mcr"

sourceArray [8] = GetDir #temp + "/turnViewPortMapsOn.mcr"
destinationArray [8] = GetDir #userMacros + "/turnViewPortMapsOn.mcr"

sourceArray [9] = GetDir #temp + "/turnViewPortMapsOn.ms"
destinationArray [9] = GetDir #userScripts + "/turnViewPortMapsOn.ms"

sourceArray [10] = GetDir #temp + "/Remesher/XRemesherEXE.ms" --Macro
destinationArray [10] = GetDir #userScripts + "/Remesher/XRemesherEXE.ms" --Macro

sourceArray [11] = GetDir #temp + "/Remesher/XBaking.mse"
destinationArray [11] = GetDir #userScripts + "/Remesher/XBaking.mse"

sourceArray [12] = GetDir #temp + "/Remesher/XRemesher.mse"
destinationArray [12] = GetDir #userScripts + "/Remesher/XRemesher.mse"

sourceArray [13] = GetDir #temp + "/Remesher/Instant Meshes.exe"
destinationArray [13] = GetDir #userScripts + "/Remesher/Instant Meshes.exe"

sourceArray [14] = GetDir #temp + "/Remesher/Instant Meshes.zip"
destinationArray [14] = GetDir #userScripts + "/Remesher/Instant Meshes.exe"

sourceArray [15] = GetDir #temp + "/Cleaner/cleaner8.ms"
destinationArray [15] = GetDir #userScripts + "/Cleaner/cleaner8.ms"

sourceArray [16] = GetDir #temp + "/InstanceTool/InstanceTool.mcr"
destinationArray [16] = GetDir #userMacros + "/InstanceTool.mcr"

sourceArray [17] = GetDir #temp + "/InstanceTool/InstanceTool.mse"
destinationArray [17] = GetDir #userScripts + "/Snowball_Tools/InstanceTool/InstanceTool.mse"

sourceArray [18] = GetDir #temp + "/InstanceTool/InstanceTool_Installer.ms"
destinationArray [18] = GetDir #userScripts + "/Snowball_Tools/InstanceTool/InstanceTool_Installer.ms"

sourceArray [19] = GetDir #temp + "/CustomScripts/orionCustom.mcr"
destinationArray [19] = GetDir #userMacros + "/orionCustom.mcr"

sourceArray [20] = GetDir #temp + "/deadPoly.mcr"
destinationArray [20] = GetDir #userMacros + "/deadPoly.mcr"

sourceArray [21] = GetDir #temp + "/EditablePoly_RegularizeEdgeLoop.mcr"
destinationArray [21] = GetDir #userMacros + "/EditablePoly_RegularizeEdgeLoop.mcr"

sourceArray [22] = GetDir #temp + "/regularizerInstall.ms"
destinationArray [22] = GetDir #userScripts + "/regularizerInstall.ms"

sourceArray [23] = GetDir #temp + "/rapidToolsInstaller_v1.14.mzp"
destinationArray [23] = GetDir #userScripts + "/MZP/rapidToolsInstaller_v1.14.mzp"

sourceArray [24] = GetDir #temp + "/LocksManager.mse"
destinationArray [24] = GetDir #userScripts + "/LocksManager.mse"

sourceArray [25] = GetDir #temp + "/LocksManagerMacro.ms"
destinationArray [25] = GetDir #userMacros + "/LocksManagerMacro.ms"

--Keep this line below the array declarations above.
scriptCount = sourceArray.count

System_IO_File = dotNetClass "System.IO.File"

for scriptCount= 1 to (sourceArray.count) do (
	if (doesFileExist destinationArray[scriptCount]) then (
		format "remove existing file %...\n" destinationArray[scriptCount]
		deleteFile destinationArray[scriptCount]
		print "OK"
	)
	format "copy % to %...\n" sourceArray[scriptCount] destinationArray[scriptCount]
	System_IO_File.Copy sourceArray[scriptCount] destinationArray[scriptCount]
)

sourceArrayCounter = sourceArray.count
outputString = sourceArrayCounter as string

print "Maxscript -> Python"

--
python.Execute "print 'Executing directory copies in Python...'"
python.ExecuteFile @"C:\ProgramData\Autodesk\ApplicationPlugins\directoryCopies.py"
		
colorman.reinitIcons()

--Declare the macro or maxscript files you wish to initialize using the destination array count matching what you want to initialize.

print "Initializing macros..."

filein destinationArray[2]
filein destinationArray[3]
filein destinationArray[5]
filein destinationArray[6]
filein destinationArray[7]
filein destinationArray[8]
filein destinationArray[10]
filein destinationArray[15]
filein destinationArray[16]
filein destinationArray[19]
filein destinationArray[20]
filein destinationArray[21]
filein destinationArray[25]

--Update the name of your eventual MZP file here and within the _make_mzp.cmd file.

scriptsMZP = "Orion Scripts"

print "Finalizing...press 'OK'."

messageBox ("Installation complete. \n \nMost scripts in this package have been initialized under the category: " + scriptsMZP + "\n \nCheck the #userScripts/MZP folder for additional MZP files.\n \nCheck the #temp/Plugins folder for plugins.") title: scriptsMZP

print ("Files/directories copied and initialized: " + outputString)

print ("Resetting 3DS Max in 3 seconds. 'Cancel' or 'No' to prevent, if you choose.")

sleep 3

if CheckForSave () do resetMaxFile ()

print OK

)