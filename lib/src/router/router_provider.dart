// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:smart_pa_news/src/commons/managers/shared_preferences_managers.dart';

class RouterProvider extends ChangeNotifier {
  static RouterProvider instance =
      RouterProvider._create(sharedPrefService: SharedPref());
  final SharedPrefIntarface sharedPrefService;

  bool _isLogged = false;

  bool get isLogged => _isLogged;

  set isLogged(bool value) {
    _isLogged = value;
    notifyListeners();
  }

  RouterProvider._create({required this.sharedPrefService});

  static Future<RouterProvider> create(
      {required SharedPrefIntarface sharedPrefService}) async {
    final routerProvider =
        RouterProvider._create(sharedPrefService: sharedPrefService);
    routerProvider._isLogged =
        await sharedPrefService.readObject("credentials") != null;
    instance = routerProvider;
    return routerProvider;
  }

  void login() {
    _isLogged = true;
    notifyListeners();
  }

  void logOut() {
    _isLogged = false;
    notifyListeners();
  }
}
