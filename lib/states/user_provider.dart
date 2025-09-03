import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String? _phoneNumber;
  String? _name;
  double _balance = 0.0;

  String? get phoneNumber => _phoneNumber;
  String? get name => _name;
  double get balance => _balance;

  void setPhoneNumber(String phone) {
    _phoneNumber = phone;
    notifyListeners();
  }

  void setName(String userName) {
    _name = userName;
    notifyListeners();
  }

  void setBalance(double newBalance) {
    _balance = newBalance;
    notifyListeners();
  }
}
