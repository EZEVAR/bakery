import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

import '../../../shared/forms_input/forms_input.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(const RegisterState());

  void emailChanged(String value) {
    final email = EmailInput.dirty(value);
    print('Email Recibido $email');
    emit(state.copyWith(
      emailInput: email,
      status: Formz.validate([
        email,
        state.passwordInput,
      ]),
    ));
  }

  void passwordChanged(String value) {
    final password = PasswordInput.dirty(value);
    emit(state.copyWith(
      passwordInput: password,
      status: Formz.validate(
          [state.emailInput, state.nameInput, state.lastnameInput, password]),
    ));
  }

  void nameChanged(String value) {
    final name = NameInput.dirty(value);
    emit(state.copyWith(
      nameInput: name,
      status: Formz.validate(
          [state.emailInput, state.passwordInput, state.lastnameInput, name]),
    ));
  }

  void lastnameChanged(String value) {
    final lastname = LastnameInput.dirty(value);
    emit(state.copyWith(
      lastnameInput: lastname,
      status: Formz.validate(
          [state.emailInput, state.passwordInput, state.nameInput, lastname]),
    ));
  }

  Future<void> registerWithSomething() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    print(
        'Credentials: ${state.emailInput.value} / ${state.passwordInput.value}');

    emit(state.copyWith(status: FormzStatus.submissionSuccess));
  }
}
