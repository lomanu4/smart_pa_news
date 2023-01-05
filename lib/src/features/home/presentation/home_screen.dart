import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smart_pa_news/src/commons/providers/auth_provider.dart';
import 'package:smart_pa_news/src/commons/providers/news_provider.dart';
import 'package:smart_pa_news/src/features/home/providers/home_provider.dart';
import 'package:smart_pa_news/src/router/router.dart';
import '../../../router/router_provider.dart';
import 'global_var.dart';
import 'widgets/news_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<NewsProvider>(context, listen: false).loadNews();
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _tabController = TabController(vsync: this, length: tabs.length);
    return Consumer<HomeProvider>(builder: (context, homeProvider, child) {
      return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Provider.of<AuthProvider>(context, listen: false).logOut();
                },
                icon: const Icon(Icons.logout))
          ],
          title: Text(homeProvider.title),
          bottom: TabBar(
            isScrollable: true,
            tabs: tabs,
            controller: _tabController,
          ),
        ),
        body: ConsumerNewList(tabController: _tabController),
      );
    });
  }
}

class ConsumerNewList extends StatelessWidget {
  const ConsumerNewList({Key? key, required TabController? tabController})
      : _tabController = tabController,
        super(key: key);

  final TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsProvider>(
      builder: (context, newsProvider, child) {
        return newsProvider.isLoading
            ? const Center(child: CircularProgressIndicator())
            : TabBarView(controller: _tabController, children: [
                NewsListWidget(
                  newsList: newsProvider.newsList,
                  onTap: (news) {
                    context.pushNamed(RouterRoutes.newsDetails.name,
                        params: {
                          "news_id": news.id.toString(),
                        },
                        extra: news);
                  },
                ),
                Container(),
                Container(),
                Container(),
              ]);
      },
    );
  }
}
