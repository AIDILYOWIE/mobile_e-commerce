class EValidatior {

  static String? validationEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Validation email address';
    }

    return null;
   }

  static String? validationPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    // Check for minimum password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    // Check for upppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }

    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character';
    }

    return null;
  }
}