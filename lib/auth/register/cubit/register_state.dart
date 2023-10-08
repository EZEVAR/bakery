part of 'register_cubit.dart';

class RegisterState extends Equatable {
  final EmailInput emailInput;
  final NameInput nameInput;
  final LastnameInput lastnameInput;
  final PhoneInput phoneInput;
  final bool loading;

  const RegisterState({
    this.emailInput = const EmailInput.pure(),
    this.nameInput = const NameInput.pure(),
    this.lastnameInput = const LastnameInput.pure(),
    this.phoneInput = const PhoneInput.pure(),
    this.loading = false,
  });

  @override
  List<Object> get props => [
        emailInput,
        nameInput,
        lastnameInput,
        phoneInput,
        loading,
      ];

  RegisterState copyWith({
    EmailInput? emailInput,
    NameInput? nameInput,
    LastnameInput? lastnameInput,
    PhoneInput? phoneInput,
    bool? loading,
    required bool status,
  }) {
    return RegisterState(
      emailInput: emailInput ?? this.emailInput,
      lastnameInput: lastnameInput ?? this.lastnameInput,
      nameInput: nameInput ?? this.nameInput,
      phoneInput: phoneInput ?? this.phoneInput,
      loading: loading ?? this.loading,
    );
  }
}
