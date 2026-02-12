import 'package:easy_localization/easy_localization.dart';

String marketCapToFormat(String value) {
  final number = double.tryParse(value);
  if (number == null) return '-';

  final formatter = NumberFormat(
    '#,##0.00',
  );

  const trillion = 1e12;
  const billion = 1e9;
  const million = 1e6;

  if (number >= trillion) {
    return '\$${formatter.format(number / trillion)} trillion';
  } else if (number >= billion) {
    return '\$${formatter.format(number / billion)} billion';
  } else if (number >= million) {
    return '${formatter.format(number / million)} million';
  } else {
    return '\$${formatter.format(number)}';
  }
}

String changeToFormat(String value) {
  final number = double.tryParse(value);
  if (number == null) return '-';

  final formatter = NumberFormat(
    '#,##0.00',
  );
  final formattedValue = formatter.format(number);
  return number >= 0 ? '+$formattedValue%' : '$formattedValue%';
}

String priceToFormat(String value) {
  final number = double.tryParse(value);
  if (number == null) return '-';

  final formatter = NumberFormat(
    '#,##0.00',
  );
  return '\$${formatter.format(number)}';
}
