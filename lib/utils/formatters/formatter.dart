import 'package:intl/intl.dart';

class EFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date); // Customize the date format as needed
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) (${phoneNumber.substring(3, 6)}) (${phoneNumber.substring(6)})';
    } else if(phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) (${phoneNumber.substring(4, 7)}) (${phoneNumber.substring(7)})';
    }

    // add more custom phone number formatting logic for different formats if needed
    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters from the phone number
    var digitOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Extract the country code from the digits with proper formatting
    String countryCode = '+${digitOnly.substring(0, 2)}';
    digitOnly = digitOnly.substring(2);

    // Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('$countryCode ');

    int i = 0;

    while (i < digitOnly.length) {
      int groupLength = 2;

      // US/Canada: +1 XXX XX XX ...
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      // Jangan sampai substring melebihi panjang string
      if (i + groupLength > digitOnly.length) {
        groupLength = digitOnly.length - i;
      }

      formattedNumber.write(
        digitOnly.substring(i, i + groupLength),
      );

      i += groupLength;

      if (i < digitOnly.length) {
        formattedNumber.write(' ');
      }
    }

    return formattedNumber.toString();
  }
}
