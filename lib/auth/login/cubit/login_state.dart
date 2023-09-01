part of 'login_cubit.dart';

class LoginState extends Equatable {
  final FormzStatus status;
  final EmailInput emailInput;
  final PasswordInput passwordInput;

  const LoginState({
    this.status = FormzStatus.pure,
    this.emailInput = const EmailInput.pure(),
    this.passwordInput = const PasswordInput.pure(),
  });

  @override
  List<Object> get props => [emailInput, passwordInput, status];

  LoginState copyWith({
    FormzStatus? status,
    EmailInput? emailInput,
    PasswordInput? passwordInput,
  }) {
    return LoginState(
      status: status ?? this.status,
      emailInput: emailInput ?? this.emailInput,
      passwordInput: passwordInput ?? this.passwordInput,
    );
  }
}
