OpenInventory() {
  TAB_X := 1565
  TAB_Y := 1005
  Send, {F1}
  MouseMove, TAB_X, TAB_Y
  Click, TAB_X TAB_Y
}

ClickInventoryItem(row, col) {
  pos := GoToInventoryItem(row, col)
  Click, pos.x pos.y
}

DropInventory(startRow := 1, startCol := 1) {
  Send, {ShiftDown}
  ForEachItemInInventory("ClickInventoryItem", startRow, startCol)
  Send, {ShiftUp}
}

GoToInventoryItem(row, col) {
  Random, randX, -3, 3
  Random, randY, -3, 3
  pos := GetInventoryItemPos(row, col)
  x := pos.x + randX
  y := pos.y + randY

  MouseMove, x, y
  return { "x": x, "y": y }
}

GetInventoryItemPos(row, col) {
  LEFT_X := 1720
  TOP_Y := 750
  COL_DIFF := 40
  ROW_DIFF := 35

  x := LEFT_X + ((col - 1) * COL_DIFF)
  y := TOP_Y + ((row - 1) * ROW_DIFF)

  return { "x": x, "y": y }
}

ForEachItemInInventory(callbackName, startRow := 1, startCol := 1, endRow := 7, endCol := 4) {
  callback := Func(callbackName)

  MAX_ROWS := 7
  MAX_COLS := 4
  row := startRow
  col := startCol

  While(row <= MAX_ROWS) {
    While(col <= MAX_COLS) {
      callback.Call(row, col)

      if(row == endRow and col == endCol) {
        return
      }

      col++
    }

    row++
    col := 1
  }
}