import 'package:bank_app/core/others/view_model.dart';

class HomeViewModel extends BaseViewModel {
  // Private properties
  bool isLoading = false;
  double balance = 1000.0; // Example balance
  String userName = "John Doe"; // Example user name

  bool showBalance = false; // For balance visibility (default is false)
  double containerHeight = 200.0; // Default container height
  double containerWidth = 200.0; // Default container width

  // Methods to update the state
  void setLoading(bool value) {
    isLoading = value;
    notifyListeners(); // Notify UI of state change
  }

  void setUserName(String name) {
    userName = name;
    notifyListeners();
  }

  void setBalance(double value) {
    balance = value;
    notifyListeners();
  }

  // Toggles the visibility of balance and changes container size
  void toggleBalance() {
    showBalance = !showBalance; // Toggle visibility
    containerHeight =
        showBalance ? 250.0 : 200.0; // Adjust size based on visibility
    containerWidth =
        showBalance ? 250.0 : 200.0; // Adjust size based on visibility
    notifyListeners(); // Notify UI of the changes
  }

  // Example method for loading user data (can be an API call)
  Future<void> loadUserData() async {
    setLoading(true);
    try {
      // Simulate a network call
      await Future.delayed(const Duration(seconds: 2));

      // Example response
      setUserName('Awais Khan');
      setBalance(300.0);
    } catch (error) {
      // Handle error if necessary
    } finally {
      setLoading(false);
    }
  }
}
