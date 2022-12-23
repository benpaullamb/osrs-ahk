#Include, ./utils/setup.ahk
#Include, ./utils/magic.ahk
#Include, ./utils/inventory.ahk

#IfWinActive, RuneLite - Neb Laup
  MButton::
    MouseGetPos, startX, startY
    OpenMagic()
    CastSuperheat()
    ClickInventoryItem(7, 4)
    Sleep, 1000
    OpenInventory()
    MouseMove, startX, startY
  return

#IfWinActive
#Include, ./utils/exit.ahk