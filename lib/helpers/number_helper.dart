class NumberHelper {
  static String removeZero(double number) {
    if (number % 1 == 0) {
      return number.toInt().toString();
    }
    return number.toString();
  }
}
