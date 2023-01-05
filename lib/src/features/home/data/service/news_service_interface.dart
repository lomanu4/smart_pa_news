import 'package:smart_pa_news/src/features/home/data/model/news_model.dart';

abstract class NewsServiceInterface {
  Future<List<News>> fetchNews();
  Future<News> fetchNewsById(int id);
}
