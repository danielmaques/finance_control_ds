import 'package:intl/intl.dart';

String formatDate(DateTime date) {
  return DateFormat('dd MMM yyyy').format(date);
}

String getInitial(String name) {
  return name.isNotEmpty ? name[0].toUpperCase() : '?';
}

DateTime now = DateTime.now();

// Formato: Jun 28, 2023
String formattedDate1 = DateFormat.yMMMEd().format(now);

// Formato: Tuesday, Jun 28, 2023
String formattedDate2 = DateFormat.yMMMMEEEEd().format(now);

// Formato: 6/28/2023
String formattedDate3 = DateFormat.yMd().format(now);

String formatMoney(double value) {
  final formatter = NumberFormat.simpleCurrency(locale: 'pt_BR');
  return formatter.format(value);
}

double convertToPercentage(double? value, double total) {
  if (total == 0 || value == null) return 0.0;
  return (value / total) * 100;
}

double convertPercentageToValue(double percentage, double total) {
  return percentage * total;
}

double formatDoubleValue(double value, {int precision = 2}) {
  return double.parse(value.toStringAsFixed(precision));
}

double formatValueProgress(double total, double value) {
  // Arredonde o valor para uma casa decimal
  double roundedValue = (value * 10).round() / total / 10;

  return double.parse(roundedValue.toStringAsFixed(1));
}
