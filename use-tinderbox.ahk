#Include, ./utils/setup.ahk
#Include, ./utils/inventory.ahk

#IfWinActive, RuneLite - Neb Laup
#If, GetKeyState("Ctrl") && GetKeyState("Shift")
  B & L::
  ForEachItemInInventory("LightFire")
  return

  LightFire(row, col) {
    if(row == 1 and col == 1) {
      return
    }
    ClickInventoryItem(1, 1)
    ClickInventoryItem(row, col)
    if(row == 1 and col == 2) {
      Sleep, 3000
    } else {
      Sleep, 2250
    }
  }

#IfWinActive
#Include, ./utils/exit.ahk