import 'package:flutter/material.dart';
import 'package:smart_pa_news/src/features/home/data/model/news_model.dart';

import 'package:smart_pa_news/src/features/home/data/service/news_service_interface.dart';

class NewsProvider extends ChangeNotifier {
  final NewsServiceInterface newsService;
  NewsProvider({required this.newsService});

  List<News> _newsList = [];
  List<News> get newsList => _newsList;

  News? _currentNews;
  News? get currentNews => _currentNews;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void loadNews() async {
    isLoading = true;
    final newsList = await newsService.fetchNews();
    _newsList = newsList;
    isLoading = false;
  }

  void loadNewsById(int id) async {
    isLoading = true;
    final newsById = await newsService.fetchNewsById(id);
    _currentNews = newsById;
    isLoading = false;
  }
}
