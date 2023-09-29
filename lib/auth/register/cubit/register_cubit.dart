import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import '../../../services/database/database_repository_impl.dart';
import '../../../shared/forms_input/forms_input.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._databaseRepository) : super(const RegisterState());

  final DatabaseRepository _databaseRepository;

  // Future<void> addUsuario(String name, String lastname, String email,
  //     String password, String phone) async {
  //   emit(state.copyWith(loading: true));

  //   // TODO: Don't save user password
  //   await _databaseRepository.addUsuario(
  //       name, lastname, email, password, phone);

  //   emit(state.copyWith(loading: false));
  // }

  void emailChanged(String value) {
    final email = EmailInput.dirty(value);
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

  void phoneChanged(String value) {
    final phone = PhoneInput.dirty(value);
    emit(state.copyWith(
      phoneInput: phone,
      status: Formz.validate([
        state.emailInput,
        state.passwordInput,
        state.lastnameInput,
        state.nameInput,
        phone
      ]),
    ));
  }
}
