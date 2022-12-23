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
  superheatX := 1850
  superheatY := 890

  MouseMove, superheatX, superheatY
  Click, superheatX superheatY
}