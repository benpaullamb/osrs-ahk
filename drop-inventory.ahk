#Include, ./utils/setup.ahk
#Include, ./utils/inventory.ahk

#IfWinActive, RuneLite - Neb Laup
  MButton::
    DropInventory(1, 1)
  return

#IfWinActive
#Include, ./utils/exit.ahk