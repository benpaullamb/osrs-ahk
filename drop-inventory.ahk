#Include, ./utils/setup.ahk
#Include, ./utils/inventory.ahk

#IfWinActive, RuneLite - Neb Laup
  MButton::
    MouseGetPos, x, y
    DropInventory(1, 1)
    MouseMove, x, y
  return

#IfWinActive
#Include, ./utils/exit.ahk