import 'package:formz/formz.dart';

/// Validation errors for the [phone] [FormzInput].
enum PhoneValidationError { invalid }

class PhoneInput extends FormzInput<String, PhoneValidationError> {
  const PhoneInput.pure() : super.pure('');

  const PhoneInput.dirty([String value = '']) : super.dirty(value);

  static final RegExp _phoneRegExp =
      RegExp(r"^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$");

  @override
  PhoneValidationError? validator(String? value) {
    return _phoneRegExp.hasMatch(value ?? '')
        ? null
        : PhoneValidationError.invalid;
  }
}
