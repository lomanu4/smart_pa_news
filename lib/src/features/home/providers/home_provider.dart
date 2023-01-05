import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  String get title => 'Smart.PA News';

  HomeProvider();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
