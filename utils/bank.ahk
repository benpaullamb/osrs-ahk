Withdraw(row, col) {
  ClickBankItem(row, col)
}

CloseBank() {
  Send, {Esc}
}

ClickBankItem(row, col) {
  pos := GetBankItemPos(row, col)
  MouseMove, pos.x, pos.y
  Click, pos.x pos.y
}

GetBankItemPos(row, col) {
  LEFT_X := 655
  TOP_Y := 130
  COL_DIFF := 50
  ROW_DIFF := 35

  x := LEFT_X + ((col - 1) * COL_DIFF)
  y := TOP_Y + ((row - 1) * ROW_DIFF)

  return { "x": x, "y": y }
}