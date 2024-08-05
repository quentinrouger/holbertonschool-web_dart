List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperaturesInF = [];
  for (double tempInC in temperaturesInC) {
    double tempInF = tempInC * 9 / 5 + 32;
    temperaturesInF.add(double.parse(tempInF.toStringAsFixed(2)));
  }
  return temperaturesInF;
}
