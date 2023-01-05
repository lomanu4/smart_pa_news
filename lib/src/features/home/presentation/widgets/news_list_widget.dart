import 'package:flutter/material.dart';
import 'package:smart_pa_news/src/features/home/data/model/news_model.dart';

import 'base_card_widget.dart';

class NewsListWidget extends StatelessWidget {
  final List<News> newsList;
  final Function(News) onTap;
  const NewsListWidget(
      {super.key, required this.newsList, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 3,
        );
      },
      itemCount: newsList.length,
      itemBuilder: (context, index) {
        final news = newsList[index];
        return GestureDetector(
          onTap: (() => onTap(news)),
          child: BaseCardWidget(
            caption: newsList[index].categoryDescription,
            image: newsList[index].image ?? '',
            subtitle: newsList[index].categoryId.toString(),
            // subtitle: ,
            title: newsList[index].bodyText ?? '',
          ),
        );
      },
    );
  }
}
