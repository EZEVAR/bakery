import 'package:formz/formz.dart';

/// Validation errors for the [name] [FormzInput].
enum NameValidationError { invalid }

class NameInput extends FormzInput<String, NameValidationError> {
  const NameInput.pure() : super.pure('');

  const NameInput.dirty([String value = '']) : super.dirty(value);

  static final RegExp _nameRegExp = RegExp(
    r'^[a-zA-Z]+(([a-zA-Z ])?[a-zA-Z]*)*$',
  );

  @override
  NameValidationError? validator(String? value) {
    return _nameRegExp.hasMatch(value ?? '')
        ? null
        : NameValidationError.invalid;
  }
}
