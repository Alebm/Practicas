class ValidationMixin {
  String? validateEmail(value) {
    if (!value.contains("@")) {
      return "Email Invalido";
    }
    return null;
  }

  String? validatePassword(value) {
    if (value.length < 6) {
      return "contraseña invalida";
    }
    return null;
  }
}
