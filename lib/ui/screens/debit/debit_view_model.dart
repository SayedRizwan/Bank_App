import 'package:bank_app/core/others/view_model.dart';

class DebitViewModel extends BaseViewModel {
  // Variables to hold dropdown values
  String _selectedPaymentMethod = 'Mobile Money';
  String _selectedPurpose = 'Bill payment';

  // Lists for dropdown options
  final List<String> paymentMethods = [
    'Mobile Money',
    'Credit Card',
    'Bank Transfer'
  ];
  final List<String> purposes = ['Bill payment', 'Shopping', 'Transfer'];

  // Getters
  String get selectedPaymentMethod => _selectedPaymentMethod;
  String get selectedPurpose => _selectedPurpose;

  // Setters with notifyListeners
  set selectedPaymentMethod(String value) {
    _selectedPaymentMethod = value;
    notifyListeners(); // Notify the UI when the value changes
  }

  set selectedPurpose(String value) {
    _selectedPurpose = value;
    notifyListeners(); // Notify the UI when the value changes
  }
}
