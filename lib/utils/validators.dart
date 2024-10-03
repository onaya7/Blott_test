class Validators {
  Validators._();

  // static String? validateField(String? fieldName, String? value) {
  //   if (value == null || value.isEmpty) {
  //     return '● $fieldName is required';
  //   }
  //   return null;
  // }

  static String? validateField(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '● $fieldName is required';
    }
    return null;
  }

  static String? validateFirstName(String? value) {
    if (value == null || value.isEmpty) {
      return '● First name is required';
    }
    return null;
  }

  static String? validateLastName(String? value) {
    if (value == null || value.isEmpty) {
      return '● Last name is required';
    }

    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return '● Email address is required';
    }
    if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
        .hasMatch(value)) {
      return '● Please enter a valid email address';
    }
    return null;
  }

  static String? validateSignInEmail(String? value) {
    if (value == null || value.isEmpty) {
      return '● Email address is required';
    }
    return null;
  }

  // static String? validateAmount(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Please enter amount';
  //   }

  //   return null;
  // }

  static String? validateSignInPassword(String? value) {
    if (value == null || value.isEmpty) {
      return '● Password is required';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return '● Password is required';
    }
    if (value.length < 8) {
      return '● Password must be at least 8 characters long';
    }
    if (!RegExp('[A-Z]').hasMatch(value)) {
      return '● Password must contain at least one uppercase letter';
    }
    if (!RegExp('[a-z]').hasMatch(value)) {
      return '● Password must contain at least one lowercase letter';
    }
    if (!RegExp('[0-9]').hasMatch(value)) {
      return '● Password must contain at least one digit';
    }
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return '● Password must contain at least one special character';
    }
    return null;
  }

  static String? validateConfirmPassword(
    String password,
    String confirmPassword,
  ) {
    if (password.isEmpty || confirmPassword.isEmpty) {
      return '● Confirm Password is required ';
    }
    if (password != confirmPassword) {
      return '● Passwords do not match';
    }
    if (password.length < 6 || confirmPassword.length < 6) {
      return '● Password must be at least 6 characters long';
    }

    return null;
  }

  static String? validatePasswords(String? password, String? confirmPassword) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return '● Password is required';
    }
    if (password != confirmPassword) {
      return '● Passwords do not match';
    }
    return null;
  }

  static String? validatePhoneNumberField(String? value) {
    if (value == null || value.isEmpty) {
      return '● Phone number is required';
    }
    return null;
  }

  static String? validateSetPin(String? value) {
    if (value == null || value.isEmpty || value.length < 4) {
      return 'Pin must be at least 4 characters';
    }
    return null;
  }

  static String? validatePlateNumber(String? value) {
    if (value == null || value.isEmpty) {
      return '● Plate number is required';
    }
    // Regular expression pattern for a license plate (e.g., AB1234CD)
    final pattern = RegExp(r'^[A-Z]{1,2}\d{1,4}[A-Z]{1,2}$');
    if (!pattern.hasMatch(value)) {
      return '● Invalid plate number';
    }
    return null;
  }

  static String? validateCardPin(String? value) {
    if (value == null || value.isEmpty) {
      return '● Pin is required';
    }
    if (value.length < 4) {
      return ' ● Pin must be at least 4 characters';
    }

    return null;
  }

  static String? validateAmount(String? value, int balance) {
    if (value == null || value.isEmpty) {
      return 'Please enter amount';
    }

    // Remove the Naira sign and commas
    final newValue = value.replaceAll('₦', '').replaceAll(',', '').trim();
    // Parse newValue to a double and round it to an integer
    final roundedValue = double.parse(newValue).round();

    if (roundedValue > balance) {
      return 'Insufficient balance';
    }

    return null;
  }
}
