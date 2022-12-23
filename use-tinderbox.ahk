#Include, ./utils/setup.ahk
#Include, ./utils/inventory.ahk

#IfWinActive, RuneLite - Neb Laup
  MButton::
    MouseGetPos, x, y
    ClickInventoryItem(1, 1)
    MouseMove, x, y
    Click, x y
  return

#IfWinActive
#Include, ./utils/exit.ahk