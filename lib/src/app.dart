import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_pa_news/src/commons/providers/auth_provider.dart';
import 'package:smart_pa_news/src/features/home/data/service/mock_news_service.dart';
import 'package:smart_pa_news/src/router/router.dart';
import 'package:smart_pa_news/src/router/router_provider.dart';

import 'commons/providers/news_provider.dart';

class SmartPANews extends StatefulWidget {
  final RouterProvider routerProvider;
  final AuthProvider authProvider;
  const SmartPANews({
    super.key,
    required this.routerProvider,
    required this.authProvider,
  });

  @override
  State<SmartPANews> createState() => _SmartPANewsState();
}

class _SmartPANewsState extends State<SmartPANews> {
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter(widget.routerProvider);
    final newsService =
        MockNewsService(); // service for data NewsService or MockNewsService
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (BuildContext context) {
            return widget.authProvider;
          },
        ),
        ChangeNotifierProvider<RouterProvider>(
          create: (BuildContext context) {
            return widget.routerProvider;
          },
        ),
        ChangeNotifierProvider<NewsProvider>(
          create: (BuildContext context) {
            return NewsProvider(newsService: newsService);
          },
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: appRouter.router.routeInformationParser,
        routerDelegate: appRouter.router.routerDelegate,
      ),
    );
  }
}
