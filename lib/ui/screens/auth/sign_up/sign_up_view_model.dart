import 'package:bank_app/core/others/view_model.dart';

class SignUpViewModel extends BaseViewModel {
  bool isShowPassword = true;
  showPassword() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
