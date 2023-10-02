import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:formz/formz.dart';

import '../../../shared/forms_input/forms_input.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._auth) : super(const LoginState());

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Some error occured");
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Some error occured");
    }
    return null;
  }

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
      status: Formz.validate([state.emailInput, password]),
    ));
  }

  Future<void> logInWithSomething() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    print(
        'Credentials: ${state.emailInput.value} / ${state.passwordInput.value}');

    emit(state.copyWith(status: FormzStatus.submissionSuccess));
  }
}
