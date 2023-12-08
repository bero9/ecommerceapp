import 'package:intl/intl.dart';

class  TFormatters{
  static String formatDate(DateTime?date){
      date??=DateTime.now();
      return DateFormat('dd-MMM-yyyy').format(date);
  }
  static String formatCurrency(double amount){
    return NumberFormat.currency(locale:'en_US',symbol: '\$').format(amount);
  }
  static String formatPhoneNumber(String phoneNumber){
    if(phoneNumber.length==10){
      return '(${phoneNumber.substring(0,3)}) (${phoneNumber.substring(3,6)}) (${phoneNumber.substring(6)})';
    }else if (phoneNumber==11){
      return '(${phoneNumber.substring(0,4)}) (${phoneNumber.substring(4,7)}) (${phoneNumber.substring(7)})';

    }
    return phoneNumber;
  }
  static String internationalFormatPhonNumber(String phoneNumber){
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');
    String countryCode = '+${digitsOnly.substring(0,2)}';
    digitsOnly = digitsOnly.substring(2);
    final formatNumber =StringBuffer();
    formatNumber.write('${countryCode}');
    int i = 0;
    while(i < digitsOnly.length){
      int groupLenght=2;
      if(i==0 &&countryCode == '+1'){
        groupLenght=3;
      }
      int end = i +groupLenght;
      formatNumber.write(digitsOnly.substring(i,end));
      if(end<digitsOnly.length)
        {formatNumber.write(' ');}
      i = end;}
return formatNumber.toString();
    }
  }
