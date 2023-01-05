import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:smart_pa_news/src/commons/managers/env_manager.dart';

class AuthService {
  FlutterAppAuth _appAuth = FlutterAppAuth();

  Future<AuthorizationTokenResponse?> login() async {
    AuthorizationServiceConfiguration _serviceConfiguration =
        AuthorizationServiceConfiguration(
            authorizationEndpoint: EnvManager.authorizationEndpoint,
            tokenEndpoint: EnvManager.tokenEndpoint,
            endSessionEndpoint: EnvManager.endSessionEndpoint);

    final AuthorizationTokenResponse? result =
        await _appAuth.authorizeAndExchangeCode(
      AuthorizationTokenRequest(
        EnvManager.clientId,
        EnvManager.redirectUrl,
        issuer: EnvManager.issuer,
        scopes: EnvManager.scopes,
        serviceConfiguration: _serviceConfiguration,
      ),
    );

    return result;
  }
}
