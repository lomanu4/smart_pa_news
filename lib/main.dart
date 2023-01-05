import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:smart_pa_news/src/commons/managers/env_manager.dart';
import 'package:smart_pa_news/src/commons/managers/shared_preference_mock.dart';
import 'package:smart_pa_news/src/commons/providers/auth_provider.dart';
import 'package:smart_pa_news/src/core/services/auth/auth_service.dart';

import 'src/app.dart';
import 'src/commons/managers/shared_preferences_managers.dart';
import 'src/router/router_provider.dart';

void main() async {
  await dotenv.load(fileName: EnvManager.enviromentFile);
  final sharedPref = SharedPref();
  final authProvider =
      AuthProvider(authService: AuthService(), servicePref: sharedPref);
  final routerProvider =
      await RouterProvider.create(sharedPrefService: sharedPref);
  runApp(SmartPANews(
    routerProvider: routerProvider,
    authProvider: authProvider,
  ));
}
