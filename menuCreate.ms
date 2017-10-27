
macroScript PythonScript category:"Menu Category"
(
	print sysInfo.currentdir
	dir = GetDir #userScripts
	python.ExecuteFile (dir  + "\pythonScript.py")
)

theMainMenu = menuMan.getMainMenuBar() --get the main menu bar
theMenu = menuMan.createMenu "Menu Category" --create a menu called Forum Help
theSubMenu = menuMan.createSubMenuItem "Menu Category" theMenu --create a SubMenuItem
theMainMenu.addItem theSubMenu (theMainMenu.numItems()+1) --add the SubMenu to the Main Menu
theAction = menuMan.createActionItem "PythonScript" "Menu Category" --create an ActionItem from the MacroScript
theMenu.addItem theAction (theMenu.numItems()+1) --add the ActionItem to the menu
menuMan.updateMenuBar() --update the menu bar 