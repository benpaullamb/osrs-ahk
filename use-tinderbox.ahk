#Include, ./utils/setup.ahk
#Include, ./utils/inventory.ahk

#IfWinActive, RuneLite - Neb Laup
#If, GetKeyState("Ctrl") && GetKeyState("Shift")
  B & L::
  MouseGetPos, x, y
  ClickInventoryItem(1, 1)
  MouseMove, x, y
  Click, x y
  return

#IfWinActive
#Include, ./utils/exit.ahk