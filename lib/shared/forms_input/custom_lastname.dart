import 'package:formz/formz.dart';

/// Validation errors for the [lastname] [FormzInput].
enum LastnameValidationError { invalid }

class LastnameInput extends FormzInput<String, LastnameValidationError> {
  const LastnameInput.pure() : super.pure('');

  const LastnameInput.dirty([String value = '']) : super.dirty(value);

  static final RegExp _lastnameRegExp = RegExp(
    r'^[a-zA-Z]+(([a-zA-Z ])?[a-zA-Z]*)*$',
  );

  @override
  LastnameValidationError? validator(String? value) {
    return _lastnameRegExp.hasMatch(value ?? '')
        ? null
        : LastnameValidationError.invalid;
  }
}
