import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:smart_pa_news/src/commons/managers/shared_preferences_managers.dart';
import 'package:smart_pa_news/src/router/router_provider.dart';

import '../../core/services/auth/auth_service.dart';

class AuthProvider extends ChangeNotifier {
  final SharedPrefIntarface servicePref;
  final AuthService authService;
  AuthProvider({required this.authService, required this.servicePref});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void login() async {
    isLoading = true;
    final responseLogin = await authService.login();
    if (responseLogin?.accessToken != null &&
        responseLogin?.refreshToken != null) {
      await saveCredentials(
          accessToken: responseLogin!.accessToken!,
          refreshToken: responseLogin.refreshToken!);
    }
  }

  Future<void> saveCredentials(
      {required String accessToken, required String refreshToken}) async {
    final credentials = {
      "accessToken": accessToken,
      "refreshToken": refreshToken
    };
    final saved = await servicePref.writeObject('credentials', credentials);
    if (saved) {
      RouterProvider.instance.isLogged = true;
    }
  }

  Future<void> disposeCredentials() async {
    final disposed = await servicePref.remove('credentials');
    if (disposed) {
      RouterProvider.instance.isLogged = false;
    }
  }

  Future<void> logOut() async {
    isLoading = true;
    await disposeCredentials();
    isLoading = false;
  }
  // Login -- mario.mazzarell@gmail.com

  // Passwd -- Mazzarelli1@
}
