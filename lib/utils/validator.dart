class Validator {
  static String? valueExists(dynamic value) {
    print('validating against $value');
    if (value == null || value.isEmpty) {
      return 'Ce champ est obligatoire.';
    } else {
      return null;
    }
  }

  static String? isPasswordCorrect(dynamic password) {
    if (password == null || password.isEmpty || password.length < 6)
      return 'Le mot de passe est obligatoire et doit contenir au moins 6 caractères';
    else
      return null;
  }

  static String? isPhoneNumberCorrect(dynamic phoneNumber) {
    if (phoneNumber != null &&
        num.tryParse(phoneNumber) != null &&
        phoneNumber.length == 9)
      return null;
    else
      return 'Le Téléphone est obligatoire et doit contenir 9 chiffres';
  }

  static bool isValidPhoneNumber(dynamic phoneNumber) {
    return phoneNumber != null &&
        num.tryParse(phoneNumber) != null &&
        phoneNumber.length == 9;
  }

  static String formatPhoneNumber(dynamic phoneNumber) {
    if (isValidPhoneNumber(phoneNumber)) return '221' + phoneNumber;
    return phoneNumber;
  }

  static String? passwordCorrect(dynamic value) {
    var emptyResult = valueExists(value);
    if (emptyResult == null || emptyResult.isEmpty) {
      var pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[#?!@$%^&*-]).{8,}$';
      var regExp = RegExp(pattern);
      if (!regExp.hasMatch(value)) {
        return 'Your password must be at least 8 symbols with number, big and small letter and special character (!@#\$%^&*).';
      } else {
        return null;
      }
    } else {
      return emptyResult;
    }
  }

  static String? validateEmail(dynamic value) {
    var pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    var regExp = RegExp(pattern);
    var emptyResult = valueExists(value);
    if (emptyResult != null) {
      return emptyResult;
    } else if (!regExp.hasMatch(value)) {
      return 'Email invalide. Un exemple : moi@email.com';
    } else {
      return null;
    }
  }

  static String? validateUsername(dynamic value) {
    // has to be an email or a phone number
    var pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    var regExp = RegExp(pattern);
    var emptyResult = valueExists(value);
    if (emptyResult != null) {
      return emptyResult;
    } else if (isPhoneNumberCorrect(value) == null) {
      return null;
    } else if (!regExp.hasMatch(value)) {
      return "Ce nom d\'utilisateur est invalide.";
    } else {
      return null;
    }
  }
}
