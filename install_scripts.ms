--
-- copyleft (c) 2011-2012 by htFX, Jens Diemer - http://www.htFX.de
--

-- actionMan.executeAction 0 "40472"  -- MAX Script: MAXScript Listener
-- clearListener()

print "install mpz package..."

src = GetDir #temp + "/menuCreate.ms"
dst = GetDir #userScripts  + "/menuCreate.ms"
src2 = GetDir #temp + "/pythonScript.py"
dst2 = GetDir #userScripts  + "/pythonScript.py"

if (doesFileExist dst) then (
	format "remove existing file %...\n" dst
	deleteFile dst
	print "OK"
)

if (doesFileExist dst2) then (
	format "remove existing file %...\n" dst2
	deleteFile dst2
	print "OK"
)

format "copy % to %...\n" src dst
-- format "copy % to %...\n" src2 dst2

System_IO_File = dotNetClass "System.IO.File"
System_IO_File.Copy src dst
System_IO_File.Copy src2 dst2
print "OK"

print "run the macro, to install it..."
filein "$userScripts//menuCreate.ms"
print "OK"

-- Display only a small Info
str = "MZP Plugin installed."

messageBox str title:"Script installed."

print "-- END --"