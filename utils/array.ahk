Includes(array, element) {
  for key, value in array {
    if(value == element) {
      return true
    }
  }
  return false
}