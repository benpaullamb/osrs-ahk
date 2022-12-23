#Include, ./utils/setup.ahk
#Include, ./utils/inventory.ahk
#Include, ./utils/bank.ahk

#IfWinActive, RuneLite - Neb Laup
  MButton::
    Withdraw(1, 1)
    CloseBank()
    Sleep, 1000
    ForEachItemInInventory(Func("BuryBone"))
  return

  BuryBone(row, col) {
    ClickInventoryItem(row, col)
    Sleep, 1200
  }

#IfWinActive
#Include, ./utils/exit.ahk