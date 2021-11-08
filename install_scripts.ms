--Script Base by Jediah Lankitus
--Compacted and expanded by Ryan Amos

--First, copy all script files that you want to install and the directoryCopies.py to C:/Users/<User>/AppData/Local/Autodesk/3dsMax/<Version> - 64bit/ENU/temp.
--Adjust this file and the directoryCopies file to coincide with YOUR script files. Otherwise, you'll end up with our script collection installed.
--IMPORTANT: UPDATE YOUR VERSION OF MAX on the Line 11 of the directoryCopies.py file. Failure to do so will cause script failure.

(
--Add custom directories here.
scriptsFolder = (GetDir #userScripts)
iconsFolder = (GetDir #userIcons)
makeDir (scriptsFolder + "\interactiveRenamer") all:true
makeDir (scriptsFolder + "\PaintPot") all:true
makeDir (scriptsFolder + "\Relink Bitmaps") all:true
makeDir (scriptsFolder + "\SweepProfile\TrackScripts") all:true
makeDir (scriptsFolder + "\Pixamoon\QuickFolders") all:true
makeDir (scriptsFolder + "\Poliigon") all:true
makeDir (scriptsFolder + "\Kitbash Blender") all:true
makeDir (scriptsFolder + "\Remesher") all:true
makeDir (scriptsFolder + "\Cleaner") all:true
makeDir (scriptsFolder + "\Snowball_Tools\InstanceTool") all:true
makeDir (scriptsFolder + "\UVPuppy") all:true
makeDir (scriptsFolder + "\EasyPeasy2") all:true
makeDir (scriptsFolder + "\TopoLogiK") all:true
makeDir (scriptsFolder + "\MZP") all:true

scriptCount = 1
sourceArray =#()
destinationArray =#()

print "Installing package contents..."

--Declare each source and destination.

sourceArray [1] = GetDir #temp + "/directoryCopies.py"
destinationArray [1] = GetDir #publicExchangeStoreInstallPath + "/directoryCopies.py"

sourceArray[2] = GetDir #temp + "/Funky_SubObjPivot.mcr"
destinationArray[2] = GetDir #userMacros  + "/Funky_SubObjPivot.mcr"

sourceArray[3] = GetDir #temp + "/manipulatorModeToggle.ms"
destinationArray[3] = GetDir #userScripts  + "/manipulatorModeToggle.ms"

sourceArray [4] = GetDir #temp + "/BendOfBrothersMacro.ms"
destinationArray [4] = GetDir #userMacros + "/BendOfBrothersMacro.ms"

sourceArray [5] = GetDir #temp + "/PaintPot.mse"
destinationArray [5] = GetDir #userScripts + "/PaintPot/PaintPot.mse"

sourceArray[6] = GetDir #temp + "/borderfill.mcr"
destinationArray[6] = GetDir #userScripts + "/borderfill.mcr"

sourceArray[7] = GetDir #temp + "/CR-crAlignPivotToSelection.mcr"
destinationArray[7] = GetDir #userScripts + "/CR-crAlignPivotToSelection.mcr"

sourceArray [8] = GetDir #temp + "/dragNDropReferences11.ms"
destinationArray [8] = GetDir #userScripts +"/dragNDropReferences11.ms"

sourceArray [9] = GetDir #temp + "/extend_borders.mse"
destinationArray [9] = GetDir #userScripts +"/extend_borders.mse"

sourceArray [10] = GetDir #temp + "/RacoonScripts_Extend_Borders.mcr"
destinationArray [10] = GetDir #userMacros + "/RacoonScripts_Extend_Borders.mcr"

sourceArray [11] = GetDir #temp + "/PaintPot.mcr"
destinationArray [11] = GetDir #userScripts + "/PaintPot/PaintPot.mcr"

sourceArray [12] = GetDir #temp + "/elementstoobjects.mcr"
destinationArray [12] = GetDir #userMacros + "/elementstoobjects.mcr"

sourceArray [13] = GetDir #temp + "/BendOfBrothers.mse"
destinationArray [13] = GetDir #userScripts + "/BendOfBrothers.mse"

sourceArray [14] = GetDir #temp + "/materialRemover.ms"
destinationArray [14] = GetDir #userScripts + "/materialRemover.ms"

sourceArray [15] = GetDir #temp + "/IFWNormals.ms"
destinationArray [15] = GetDir #userScripts + "/IFWNormals.ms"

sourceArray [16] = GetDir #temp + "/IFWNormals.mse"
destinationArray [16] = GetDir #userScripts + "/IFWNormals.mse"

sourceArray [17] = GetDir #temp + "/nonQuadSelector.mcr"
destinationArray [17] = GetDir #userMacros + "/nonQuadSelector.mcr"

sourceArray [18] = GetDir #temp + "/quickattach_v1.82.mcr"
destinationArray [18] = GetDir #userMacros + "/quickattach_v1.82.mcr"

sourceArray [19] = GetDir #temp + "/turnViewPortMapsOn.mcr"
destinationArray [19] = GetDir #userMacros + "/turnViewPortMapsOn.mcr"

sourceArray [20] = GetDir #temp + "/turnViewPortMapsOn.ms"
destinationArray [20] = GetDir #userScripts + "/turnViewPortMapsOn.ms"

sourceArray [21] = GetDir #temp + "/Pixamoon/pxm-QuickPivot_v1.19.ms"
destinationArray [21] = GetDir #userScripts + "/Pixamoon/pxm-QuickPivot_v1.19.ms"

sourceArray [22] = GetDir #temp + "/UV Puppy 1.54/UVPuppy_Installer.ms"
destinationArray [22] = GetDir #userScripts + "/UVPuppy/UVPuppy_Installer.ms"

sourceArray [23] = GetDir #temp + "/UV Puppy 1.54/UVPuppy/Utopia-UVPuppy.mcr"
destinationArray [23] = GetDir #userMacros + "/Utopia-UVPuppy.mcr"

sourceArray [24] = GetDir #temp + "/Interactive Renamer/Buelter-interactiveRenamer_macro.mcr"
destinationArray [24] = GetDir #userMacros + "/Buelter-interactiveRenamer_macro.mcr"

sourceArray [25] = GetDir #temp + "/Interactive Renamer/interactiveRenamer.ms"
destinationArray [25] = GetDir #userScripts + "/interactiveRenamer/interactiveRenamer.ms"

sourceArray [26] = GetDir #temp + "/Interactive Renamer/interactiveRenamer_installed.ms"
destinationArray [26] = GetDir #userScripts + "/interactiveRenamer/interactiveRenamer_installed.ms"

sourceArray [27] = GetDir #temp + "/Interactive Renamer/nameplates.ms"
destinationArray [27] = GetDir #userScripts + "/interactiveRenamer/nameplates.ms"

sourceArray [28] = GetDir #temp + "/Interactive Renamer/interactiveRenamer_header.png"
destinationArray [28] = GetDir #userScripts + "/interactiveRenamer/interactiveRenamer_header.png"

sourceArray [29] = GetDir #temp + "/Relink Bitmaps/header.png"
destinationArray [29] = GetDir #userScripts + "/Relink Bitmaps/header.png"

sourceArray [30] = GetDir #temp + "/Relink Bitmaps/C_Lib.mse"
destinationArray [30] = GetDir #userScripts + "/Relink Bitmaps/C_Lib.mse"

sourceArray [31] = GetDir #temp + "/Relink Bitmaps/InstalledMessage.ms"
destinationArray [31] = GetDir #userScripts + "/Relink Bitmaps/InstalledMessage.ms"

sourceArray [32] = GetDir #temp + "/Relink Bitmaps/Relink Bitmaps.mse"
destinationArray [32] = GetDir #userScripts + "/Relink Bitmaps/Relink Bitmaps.mse"

sourceArray [33] = GetDir #temp + "/Relink Bitmaps/Relink_Lib.mse"
destinationArray [33] = GetDir #userScripts + "/Relink Bitmaps/Relink_Lib.mse"

sourceArray [34] = GetDir #temp + "/Relink Bitmaps/Relink Bitmaps_macro.mcr"
destinationArray [34] = GetDir #userScripts + "/Relink Bitmaps/Relink Bitmaps_macro.mcr"

sourceArray [35] = GetDir #temp + "/preetis_tools-randomrotate.ms"
destinationArray [35] = GetDir #userScripts + "/preetis_tools-randomrotate.ms"

sourceArray [36] = GetDir #temp + "/SweepProfile/TrackScripts/IsolateSel.ms"
destinationArray [36] = GetDir #userScripts + "/SweepProfile/TrackScripts/IsolateSel.ms"

sourceArray [37] = GetDir #temp + "/SweepProfile/TrackScripts/SweepProfile.mse"
destinationArray [37] = GetDir #userScripts + "/SweepProfile/TrackScripts/SweepProfile.mse"

sourceArray [38] = GetDir #temp + "/SweepProfile/usericons/TrackScripts_16a.bmp"
destinationArray [38] = GetDir #userIcons + "/TrackScripts_16a.bmp"

sourceArray [39] = GetDir #temp + "/SweepProfile/usericons/TrackScripts_16i.bmp"
destinationArray [39] = GetDir #userIcons + "/TrackScripts_16i.bmp"

sourceArray [40] = GetDir #temp + "/SweepProfile/usericons/TrackScripts_24a.bmp"
destinationArray [40] = GetDir #userIcons + "/TrackScripts_24a.bmp"

sourceArray [41] = GetDir #temp + "/SweepProfile/usericons/TrackScripts_24i.bmp"
destinationArray [41] = GetDir #userIcons + "/TrackScripts_24i.bmp"

sourceArray [42] = GetDir #temp + "/SweepProfile/SweepInstall.mse"
destinationArray [42] = GetDir #userScripts + "/SweepProfile/SweepInstall.mse"

sourceArray [43] = GetDir #temp + "/SweepProfile/TrackScripts.ms"
destinationArray [43] = GetDir #userScripts + "/SweepProfile/TrackScripts.ms"

sourceArray [44] = GetDir #temp + "/Martinez_Macro_GradientMap.mcr"
destinationArray [44] = GetDir #userScripts + "/Martinez_Macro_GradientMap.mcr"

sourceArray [45] = GetDir #temp + "/Pixamoon/QuickFolders/Pixamoon-Quickfolders.mcr"
destinationArray [45] = GetDir #userScripts + "/Pixamoon/QuickFolders/Pixamoon-Quickfolders.mcr"

sourceArray [46] = GetDir #temp + "/Pixamoon/QuickFolders/pxm-QuickFolders.mse"
destinationArray [46] = GetDir #userScripts + "/Pixamoon/QuickFolders/pxm-QuickFolders.mse"

sourceArray [47] = GetDir #temp + "/Pixamoon/QuickFolders/pxm-QuickFoldersl.mse"
destinationArray [47] = GetDir #userScripts + "/Pixamoon/QuickFolders/pxm-QuickFoldersl.mse"

sourceArray [48] = GetDir #temp + "/Pixamoon/QuickFolders/QuickFolders_16i.bmp"
destinationArray [48] = GetDir #userIcons + "/QuickFolders_16i.bmp"

sourceArray [49] = GetDir #temp + "/Pixamoon/QuickFolders/QuickFolders_24i.bmp"
destinationArray [49] = GetDir #userIcons + "/QuickFolders_24i.bmp"

sourceArray [50] = GetDir #temp + "/ColorIDAssignPro_V2.mse"
destinationArray [50] = GetDir #userScripts + "/ColorIDAssignPro_V2.mse"

sourceArray [51] = GetDir #temp + "/ColorIDAssignPro_V2_Macro.mcr"
destinationArray [51] = GetDir #userMacros + "/ColorIDAssignPro_V2_Macro.mcr"

sourceArray [52] = GetDir #temp + "/Poliigon/Poliigon_Material_Converter.ms"
destinationArray [52] = GetDir #userScripts + "/Poliigon/Poliigon_Material_Converter.ms"

sourceArray [53] = GetDir #temp + "/Poliigon/Poliigon_Material_Converter_Install.mcr"
destinationArray [53] = GetDir #userScripts + "/Poliigon/Poliigon_Material_Converter_Install.mcr"

sourceArray [54] = GetDir #temp + "/kitbashblender/kb_help.html"
destinationArray [54] = GetDir #userScripts + "/Kitbash Blender/kb_help.html"

sourceArray [55] = GetDir #temp + "/kitbashblender/kblib.mse"
destinationArray [55] = GetDir #userScripts + "/Kitbash Blender/kblib.mse"

sourceArray [56] = GetDir #temp + "/kitbashblender/kitbashblender.mcr"
destinationArray [56] = GetDir #userScripts + "/Kitbash Blender/kitbashblender.mcr"

sourceArray [57] = GetDir #temp + "/kitbashblender/kitbashblender.mse"
destinationArray [57] = GetDir #userScripts + "/Kitbash Blender/kitbashblender.mse"

sourceArray [58] = GetDir #temp + "/FaceWeightedNormals.ms"
destinationArray [58] = GetDir #userMacros + "/FaceWeightedNormals.ms"

sourceArray [59] = GetDir #temp + "/FaceWeightedNormalsMacro.ms"
destinationArray [59] = GetDir #userMacros + "/FaceWeightedNormalsMacro.ms"

sourceArray [60] = GetDir #temp + "/Remesher/XRemesherEXE.ms"
destinationArray [60] = GetDir #userScripts + "/Remesher/XRemesherEXE.ms"

sourceArray [61] = GetDir #temp + "/Remesher/XBaking.mse"
destinationArray [61] = GetDir #userScripts + "/Remesher/XBaking.mse"

sourceArray [62] = GetDir #temp + "/Remesher/XRemesher.mse"
destinationArray [62] = GetDir #userScripts + "/Remesher/XRemesher.mse"

sourceArray [63] = GetDir #temp + "/Remesher/Instant Meshes.exe"
destinationArray [63] = GetDir #userScripts + "/Remesher/Instant Meshes.exe"

sourceArray [64] = GetDir #temp + "/Remesher/Instant Meshes.zip"
destinationArray [64] = GetDir #userScripts + "/Remesher/Instant Meshes.exe"

sourceArray [65] = GetDir #temp + "/Easy Peasy 2.60/EasyPeasy2_Installer.ms"
destinationArray [65] = GetDir #userScripts  + "/EasyPeasy2/EasyPeasy2_Installer.ms"

sourceArray [66] = GetDir #temp + "/meshsurfacefromselection.mcr"
destinationArray [66] = GetDir #userMacros  + "/meshsurfacefromselection.mcr"

sourceArray [67] = GetDir #temp + "/Polytools/Advanced_UV_Normalizer_v243/auvn_installer_243.mzp"
destinationArray [67] = GetDir #userScripts + "/MZP/auvn_installer_243.mzp"

sourceArray [68] = GetDir #temp + "/Polytools/PolyUnwrapper_v434/polyunwrapper_installer_434.mzp"
destinationArray [68] = GetDir #userScripts + "/MZP/polyunwrapper_installer_434.mzp"

sourceArray [69] = GetDir #temp + "/Miauu/miauuLiveMeasurePro_v2_7.mzp"
destinationArray [69] = GetDir #userScripts + "/MZP/miauuLiveMeasurePro_v2_7.mzp"

sourceArray [70] = GetDir #temp + "/Cleaner/cleaner8.ms"
destinationArray [70] = GetDir #userScripts + "/Cleaner/cleaner8.ms"

sourceArray [71] = GetDir #temp + "/InstanceTool/InstanceTool.mcr"
destinationArray [71] = GetDir #userMacros + "/InstanceTool.mcr"

sourceArray [72] = GetDir #temp + "/InstanceTool/InstanceTool.mse"
destinationArray [72] = GetDir #userScripts + "/Snowball_Tools/InstanceTool/InstanceTool.mse"

sourceArray [73] = GetDir #temp + "/InstanceTool/InstanceTool_Installer.ms"
destinationArray [73] = GetDir #userScripts + "/Snowball_Tools/InstanceTool/InstanceTool_Installer.ms"

sourceArray [74] = GetDir #temp + "/CustomScripts/orionCustom.mcr"
destinationArray [74] = GetDir #userMacros + "/orionCustom.mcr"

sourceArray [75] = GetDir #temp + "/deadPoly.mcr"
destinationArray [75] = GetDir #userMacros + "/deadPoly.mcr"

sourceArray [76] = GetDir #temp + "/EditablePoly_RegularizeEdgeLoop.mcr"
destinationArray [76] = GetDir #userMacros + "/EditablePoly_RegularizeEdgeLoop.mcr"

sourceArray [77] = GetDir #temp + "/regularizerInstall.ms"
destinationArray [77] = GetDir #userScripts + "/regularizerInstall.ms"

sourceArray [78] = GetDir #temp + "/UV Puppy 1.54/UVPuppy/UVPuppy.ms"
destinationArray [78] = GetDir #userScripts + "/UVPuppy/UVPuppy.ms"

sourceArray [79] = GetDir #temp + "/Easy Peasy 2.60/EasyPeasy2/EasyPeasy2.ms"
destinationArray [79] = GetDir #userScripts + "/EasyPeasy2/EasyPeasy2.ms"

sourceArray [80] = GetDir #temp + "/Easy Peasy 2.60/EasyPeasy2/Utopia-EasyPeasy2.mcr"
destinationArray [80] = GetDir #userMacros + "/Utopia-EasyPeasy2.mcr"

sourceArray [81] = GetDir #temp + "/TopoLogiK/TopoLogiK_Params_Macro.mcr"
destinationArray [81] = GetDir #userMacros + "/TopoLogiK_Params_Macro.mcr"

sourceArray [82] = GetDir #temp + "/TopoLogiK/TopoLogiK_PieMenu_Macro.mcr"
destinationArray [82] = GetDir #userMacros + "/TopoLogiK_PieMenu_Macro.mcr"

sourceArray [83] = GetDir #temp + "/rapidToolsInstaller_v1.14.mzp"
destinationArray [83] = GetDir #userScripts + "/MZP/rapidToolsInstaller_v1.14.mzp"

sourceArray [84] = GetDir #temp + "/Axis_v1.0.mzp"
destinationArray [84] = GetDir #userScripts + "/MZP/Axis_v1.0.mzp"

sourceArray [85] = GetDir #temp + "/Octopus 2.0/Octopus-Chronos.mcr"
destinationArray [85] = GetDir #userMacros + "/Octopus-Chronos.mcr"

sourceArray [86] = GetDir #temp + "/Octopus 2.0/Octopus-OctopusLicensing.mcr"
destinationArray [86] = GetDir #userMacros + "/Octopus-OctopusLicensing.mcr"

sourceArray [87] = GetDir #temp + "/Octopus 2.0/Octopus-OctopusManager.mcr"
destinationArray [87] = GetDir #userMacros + "/Octopus-OctopusManager.mcr"

sourceArray [88] = GetDir #temp + "/Octopus 2.0/Octopus-Tutorials.mcr"
destinationArray [88] = GetDir #userMacros + "/Octopus-Tutorials.mcr"

sourceArray [89] = GetDir #temp + "/LocksManager.mse"
destinationArray [89] = GetDir #userScripts + "/LocksManager.mse"

sourceArray [90] = GetDir #temp + "/LocksManagerMacro.ms"
destinationArray [90] = GetDir #userMacros + "/LocksManagerMacro.ms"

sourceArray [91] = GetDir #temp + "/MeshInsert/MeshInsert.mcr"
destinationArray [91] = GetDir #userMacros + "/MeshInsert.mcr"

sourceArray [92] = GetDir #temp + "/MeshInsert/MeshInsert_Icons_a.bmp"
destinationArray [92] = GetDir #userIcons + "/MeshInsert_Icons_a.bmp"

sourceArray [93] = GetDir #temp + "/MeshInsert/MeshInsert_Icons_i.bmp"
destinationArray [93] = GetDir #userIcons + "/MeshInsert_Icons_i.bmp"

sourceArray [93] = GetDir #temp + "/Icons/OUL.bmp"
destinationArray [93] = GetDir #userIcons + "/OUL.bmp"

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
python.ExecuteFile @"C:\ProgramData\Autodesk\ApplicationPlugins\directoryCopies.py"
		
colorman.reinitIcons()

--Declare the macro or maxscript files you wish to initialize using the destination array count matching what you want to initialize.

print "Initializing macros..."

fileIn destinationArray[2]
fileIn destinationArray[3]
fileIn destinationArray[4]
fileIn destinationArray[6]
fileIn destinationArray[7]
fileIn destinationArray[8]
fileIn destinationArray[10]
fileIn destinationArray[11]
fileIn destinationArray[12]
fileIn destinationArray[14]
fileIn destinationArray[15]
fileIn destinationArray[17]
fileIn destinationArray[18]
fileIn destinationArray[19]
fileIn destinationArray[21]
fileIn destinationArray[23]
fileIn destinationArray[24]
fileIn destinationArray[34]
fileIn destinationArray[43]
fileIn destinationArray[44]
fileIn destinationArray[45]
fileIn destinationArray[51]
fileIn destinationArray[53]
fileIn destinationArray[56]
fileIn destinationArray[60]
fileIn destinationArray[66]
fileIn destinationArray[70]
fileIn destinationArray[74]
fileIn destinationArray[75]
fileIn destinationArray[77]
fileIn destinationArray[80]
fileIn destinationArray[81]
fileIn destinationArray[82]
fileIn destinationArray[85]
fileIn destinationArray[86]
fileIn destinationArray[87]
fileIn destinationArray[88]
fileIn destinationArray[90]
fileIn destinationArray[91]

--Update the name of your eventual MZP file here and within the _make_mzp.cmd file.

scriptsMZP = "Orion Scripts"

print "Finalizing...press 'OK'."

messageBox ("Installation complete. \n \nMost scripts in this package have been initialized under the category: " + scriptsMZP + "\n \nCheck the #userScripts/MZP folder for additional MZP files.\n \nCheck the #temp/Plugins folder for plugins.\n \nNote that for any missing scripts, it may be necessary to open the macro file and 'Evaluate All'.") title: scriptsMZP

print ("Files/directories copied and initialized: " + outputString)

print ("Resetting 3DS Max in 3 seconds. 'Cancel' or 'No' to prevent, if you choose.")

sleep 3

if CheckForSave () do resetMaxFile ()

clearListener()

)