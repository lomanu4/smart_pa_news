import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smart_pa_news/src/commons/providers/auth_provider.dart';
import 'package:smart_pa_news/src/features/auth/login_screen.dart';
import 'package:smart_pa_news/src/features/home/providers/home_provider.dart';
import 'package:smart_pa_news/src/news/presentation/news_details_screen.dart';
import 'package:smart_pa_news/src/router/router_provider.dart';

import '../features/home/presentation/home_screen.dart';

enum RouterRoutes {
  root,
  login,
  home,
  news,
  newsDetails,
}

class AppRouter {
  final RouterProvider routerProvider;
  AppRouter(
    this.routerProvider,
  );
  late final router = GoRouter(
    refreshListenable: routerProvider,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: "/",
        name: RouterRoutes.root.name,
        redirect: (state) {
          return state.namedLocation(RouterRoutes.home.name);
        },
      ),
      GoRoute(
        path: '/login',
        name: RouterRoutes.login.name,
        pageBuilder: (context, state) {
          return MaterialPage(child: const LoginScreen(), key: state.pageKey);
        },
      ),
      GoRoute(
          path: "/home",
          name: RouterRoutes.home.name,
          pageBuilder: (context, state) {
            return MaterialPage(
                child: ChangeNotifierProvider<HomeProvider>(
                  create: (context) => HomeProvider(),
                  child: const HomeScreen(),
                ),
                key: state.pageKey);
          },
          routes: [
            GoRoute(
              path: "news/:news_id", //: parammetro dynamic
              name: RouterRoutes.newsDetails.name,
              pageBuilder: (context, state) {
                final String? newsIdString = state.params["news_id"];

                return MaterialPage(
                    child: NewsDetailsScreen(
                      newsId: int.parse(newsIdString!),
                    ),
                    key: state.pageKey);
              },
            ),
          ]),
    ],
    redirect: (state) {
      final loginLoc = state
          .namedLocation(RouterRoutes.login.name); // Ottengo la login location
      final rootLoc = state
          .namedLocation(RouterRoutes.root.name); // Ottengo la root location
      final loggingIn = state.subloc ==
          loginLoc; // Se mi trovo sulla rotta di login è true altrimenti false
      final loggedIn =
          routerProvider.isLogged; // se sono loggato è true altrimenti false
      if (!loggedIn && !loggingIn) {
        return loginLoc;
      }
      if (loggedIn && loggingIn) {
        return rootLoc;
      }
      return null;
    },
  );
}
