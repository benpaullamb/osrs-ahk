#Include, ./utils/setup.ahk
#Include, ./utils/inventory.ahk
#Include, ./utils/magic.ahk

#IfWinActive, RuneLite - Neb Laup
  MButton::
    ForEachItemInInventory("Runecraft", 1, 3, 4, 3)
    Sleep, 400
    OpenMagic()
    CastTeleVarrock()
    OpenInventory()
  return

  Runecraft(row, col) {
    ClickInventoryItem(row, col)
    Sleep, 400
    MouseMove, 500, 500
    Sleep, 100
    Click, 500 500
    Sleep, 400
  }

#IfWinActive
#Include, ./utils/exit.ahk