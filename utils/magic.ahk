OpenMagic() {
  Send, {F1}
  Send, {F6}
}

CastHighAlch() {
  highAlchX := 1705
  highAlchY := 950

  Random, randX, -3, 3
  Random, randY, -3, 3
  x := highAlchX + randX
  y := highAlchY + randY

  MouseMove, x, y
  Click, x y
}

CastSuperheat() {
  x := 1850
  y := 890

  MouseMove, x, y
  Click, x y
}

CastTeleVarrock() {
  x := 1800
  y := 830

  MouseMove, x, y
  Click, x y
}