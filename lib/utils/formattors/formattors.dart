import 'package:intl/intl.dart';

class AStoreAppFormattors {
  AStoreAppFormattors._();

  ///format date to 'dd-MMM-yyyy' format
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  ///format country code to 'US' format
  static String formatCurrency(double ammount) {
    return NumberFormat.currency(
      locale: 'en_US',
      symbol: '\$',
    ).format(ammount);
  }

  ///format phone number to '(123) 456 7890' format
  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }

  ///format international phone number
  static String internationalFormatPhoneNumber(String phoneNumber) {
    var digitOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    String countryCode = '+${digitOnly.substring(0, 2)}';
    var digits = digitOnly.substring(2);

    final formatedNumber = StringBuffer();
    formatedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digits.length) {
      int groupLenght = 2;
      if (i == 0 && countryCode == '+1') {
        groupLenght = 3;
      }
      int end = i + groupLenght;
      formatedNumber.write(digits.substring(i, end));
      if (end != digits.length) {
        formatedNumber.write(' ');
      }
      i = end;
    }

    return phoneNumber;
  }
}
