#Include, ./utils/setup.ahk
#Include, ./utils/inventory.ahk
#Include, ./utils/bank.ahk

#IfWinActive, RuneLite - Neb Laup
#If, GetKeyState("Ctrl") && GetKeyState("Shift")
  B & L::
  ForEachItemInInventory("ClickInventoryItem", 1, 2)
  ClickBankItem(1, 1)
  Send, {ShiftDown}
  ClickBankItem(1, 2)
  Send, {ShiftUp}
  Sleep, 300
  CloseBank()
  return

  B & P::
  MouseGetPos, x, y
  ClickInventoryItem(1, 1)
  ClickInventoryItem(1, 2)
  ClickInventoryItem(1, 3)
  MouseMove, x, y
  return

#IfWinActive
#Include, ./utils/exit.ahk