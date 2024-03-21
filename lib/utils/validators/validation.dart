
class TValidator{
  static String? validateEmptyText(String? fieldName ,String? value){
    if(value == null || value.isEmpty){
      return '$fieldName is required' ;
    }
    return null;
  }
  static String? validateEmail(String? value)
  {
    if(value == null|| value.isEmpty){
      return 'Email is required.';
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email address';
    }
    return null;
}
  static String? validatePassword(String? value)
  {
    if(value == null|| value.isEmpty){
      return 'Password is required.';
    }
     if(value.length<6){
       return 'Password must be at least 6 characters long';
     }
     if(value.contains(RegExp(r'[A-Z]'))){
       return   'Password must be at least one    uppercase letter';
     }
    if(value.contains(RegExp(r'[8-9]'))){
      return   'Password must be at least one    Number';
    }
    if(value.contains(RegExp(r'[[!@#$%^&*()?{}[]<>]'))){
      return   'Password must be at least one    special character';
    }
    return null;
  }
  static String? validatePhoneNumber(String? value)
  {
    if(value == null|| value.isEmpty){
      return 'PhoneNumber  is required.';
    }
    final phoneRegExp = RegExp(r'^\d{10}$');
    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid phone Number format (10 digits required).';
    }
    return null;
  }

}