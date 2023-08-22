class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double bmi = 0;

  String calculateBMI() {
    double bmi =
        weight / ((height.toDouble() / 100) * (height.toDouble() / 100));
    return bmi.toStringAsFixed(1);
  }

  String getResults() {
    double bmi =
        weight / ((height.toDouble() / 100) * (height.toDouble() / 100));
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    double bmi =
        weight / ((height.toDouble() / 100) * (height.toDouble() / 100));
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
