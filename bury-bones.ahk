#Include, ./utils/setup.ahk
#Include, ./utils/inventory.ahk
#Include, ./utils/bank.ahk

#IfWinActive, RuneLite - Neb Laup
  MButton::
    i := 0
    While(i < 10) {
      Withdraw(1, 1)
      CloseBank()
      Sleep, 1000
      ForEachItemInInventory("BuryBone")
      MouseMove, 880, 450
      Sleep, 1000
      Click, 880 450
      Sleep, 1000
      i++
    }
  return

  BuryBone(row, col) {
    ClickInventoryItem(row, col)
    Sleep, 1200
  }

#IfWinActive
#Include, ./utils/exit.ahk