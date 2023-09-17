part of 'register_cubit.dart';

class RegisterState extends Equatable {
  final FormzStatus status;
  final EmailInput emailInput;
  final PasswordInput passwordInput;
  final NameInput nameInput;
  final LastnameInput lastnameInput;

  const RegisterState({
    this.status = FormzStatus.pure,
    this.emailInput = const EmailInput.pure(),
    this.passwordInput = const PasswordInput.pure(),
    this.nameInput = const NameInput.pure(),
    this.lastnameInput = const LastnameInput.pure(),
  });

  @override
  List<Object> get props =>
      [status, emailInput, passwordInput, nameInput, lastnameInput];

  RegisterState copyWith({
    FormzStatus? status,
    EmailInput? emailInput,
    PasswordInput? passwordInput,
    NameInput? nameInput,
    LastnameInput? lastnameInput,
  }) {
    return RegisterState(
      status: status ?? this.status,
      emailInput: emailInput ?? this.emailInput,
      passwordInput: passwordInput ?? this.passwordInput,
      lastnameInput: lastnameInput ?? this.lastnameInput,
      nameInput: nameInput ?? this.nameInput,
    );
  }
}
