import 'package:flutter/material.dart';
import 'package:tnp/screens/login/widgets/branch_Data.dart';

class SingleNotifier extends ChangeNotifier {
  String _currentBranch = branches[0];
  SingleNotifier();

  String get currentBranch => _currentBranch;

  updateBranch(String value) {
    if (value != _currentBranch) {
      _currentBranch = value;
      notifyListeners();
    }
  }
}
