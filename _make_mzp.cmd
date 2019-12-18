@REM Only a small batch file to create the MAXScript ZIP Package (*.mzp File)

@REM (Edit your MZP name here.)
@set filename=MAXScript_ZIP_Package\OrionScripts-Github.mzp
del %filename%
"%ProgramFiles%\7-Zip\7z.exe" u -tzip -mx9 %filename% *.ms *.mcr *.run *.txt pythonScript.py
@pause