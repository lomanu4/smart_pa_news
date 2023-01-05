import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvManager {
  static _AuthConfig get authConfig => _AuthConfig();
  static String get enviroment {
    return const String.fromEnvironment('ENVIRONMENT');
  }

  static String get enviromentFile {
    switch (EnvManager.enviroment) {
      case "dev":
        return "assets/envs/.env.dev";

      case "demo":
        return "assets/envs/.env.demo";

      case "prod":
        return "assets/envs/.env.prod";

      default:
        return "assets/envs/.env.dev";
    }
  }

  static String get clientId {
    return dotenv.get('CLIENT_ID');
  }

  static String get redirectUrl {
    return dotenv.get("REDIRECT_URL");
  }

  static String get issuer {
    return dotenv.get('ISSUER');
  }

  static String get discoveryUrl {
    return dotenv.get('DICOVERY_URL');
  }

  static String get postLogoutRedirectUrl {
    return dotenv.get('POST_LOGOUT_REDIRECT_URL');
  }

  static List<String> get scopes {
    final scopesString = dotenv.get('SCOPES');
    return scopesString.split(
        ','); // ritorna una lista presa dalla Stringa siparati tra virgole
  }

  static String get authorizationEndpoint {
    return dotenv.get('AUTHORIZATION_ENDPOINT');
  }

  static String get tokenEndpoint {
    return dotenv.get('TOKEN_ENDPOINT');
  }

  static String get endSessionEndpoint {
    return dotenv.get('END_SESSION_ENDPOINT');
  }
}

class _AuthConfig {}
