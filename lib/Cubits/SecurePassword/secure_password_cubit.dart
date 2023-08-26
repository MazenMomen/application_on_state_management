import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'secure_password_state.dart';

class SecurePasswordCubit extends Cubit<SecurePasswordState> {
  SecurePasswordCubit() : super(SecurePasswordInitial());
  bool isSecure = false;
  void showOrHide() {
    isSecure = !isSecure;
    emit(SecurePasswordInitial());
  }
}
