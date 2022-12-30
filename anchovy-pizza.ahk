#Include, ./utils/setup.ahk
#Include, ./utils/bank.ahk
#Include, ./utils/inventory.ahk

#IfWinActive, RuneLite - Neb Laup
  MButton::
    ClickInventoryItem(1, 1)
    Sleep, 500
    Withdraw(1, 1)
    Sleep, 500
    Withdraw(1, 2)
    Sleep, 500
    CloseBank()
    Sleep, 500
    RightClickInventoryItem(4, 2, 2)
    Sleep, 500
    ClickInventoryItem(4, 3)
    Sleep, 1000
    Send, {Space}
  return

#IfWinActive
#Include, ./utils/exit.ahk