import 'package:smart_pa_news/src/features/home/data/model/news_model.dart';
import 'package:smart_pa_news/src/features/home/data/service/news_service_interface.dart';

class NewsService implements NewsServiceInterface {
  @override
  Future<List<News>> fetchNews() {
    throw UnimplementedError();
  }

  @override
  Future<News> fetchNewsById(int id) {
    throw UnimplementedError();
  }
}
