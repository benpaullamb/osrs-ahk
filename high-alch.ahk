#Include, ./utils/setup.ahk
#Include, ./utils/magic.ahk
#Include, ./utils/inventory.ahk

#IfWinActive, RuneLite - Neb Laup
  MButton::
    OpenMagic()
    Sleep, 100

    i := 0
    While(i < 125) {
      CastHighAlch()
      Sleep, 500
      ClickInventoryItem(7, 1)
      Sleep, 2000
      i++
    }
  return

#IfWinActive
#Include, ./utils/exit.ahk