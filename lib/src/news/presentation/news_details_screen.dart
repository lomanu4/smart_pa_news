import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_pa_news/src/news/presentation/widget/appbar_details.dart';
import 'package:smart_pa_news/src/news/presentation/widget/button_rispondi_details.dart';

import '../../commons/providers/news_provider.dart';
import 'widget/ContentDetails.dart';
import 'widget/allegato_details.dart';
import 'widget/allert_dialog_allegato_details.dart';
import 'widget/attach_details_icon.dart';
import 'widget/comunicazione.dart';
import 'widget/datecreate_details.dart';
import 'widget/divider.dart';
import 'widget/risposte_alleagato_details.dart';
import 'widget/risposte_details.dart';
import 'widget/tiitle_details.dart';

class NewsDetailsScreen extends StatefulWidget {
  final int newsId;

  const NewsDetailsScreen({super.key, required this.newsId});

  @override
  State<NewsDetailsScreen> createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<NewsProvider>(context, listen: false)
          .loadNewsById(widget.newsId);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsProvider>(builder: (context, newsProvider, child) {
      return newsProvider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Scaffold(
              appBar: AppBarDetails(
                  category: newsProvider.currentNews!.categoryDescription),
              body: (SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.manual,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(children: [
                      const SizedBox(height: 32.0),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: TiitleDetails(
                                    tittle:
                                        newsProvider.currentNews!.bodyText ??
                                            '')),
                            const SizedBox(width: 34.4),
                            GestureDetector(
                                onTap: () {
                                  showMyDialog(context, 2,
                                      ['Allegato_1.pdf', 'Allegato_2.pdf']);
                                },
                                child:
                                    const AttachdetailsIcon(numberattach: 2)),
                            const SizedBox(width: 19.56),
                          ]),
                      // Image.network(newsProvider.currentNews?.image ?? ''),
                      const SizedBox(height: 16.0),
                      DateTittle(
                          datecreateat:
                              newsProvider.currentNews!.createdAt.toString()),
                      const SizedBox(height: 24.0),

                      const DividerDetails(),
                      const SizedBox(height: 26.5),
                      const ComunicazioneDetails(),
                      const SizedBox(height: 18.5),
                      ContentDetails(
                          contentText: newsProvider.currentNews?.details ?? ''),
                      const SizedBox(height: 24.0),
                      const AllegatoDetails(
                        allegato: ['Allegato_1.pdf', 'Allegato_2.pdf'],
                      ),
                      const SizedBox(height: 24.0),
                      const DividerDetails(),
                      const SizedBox(height: 24.0),
                      const RisposteDetails(),
                      const SizedBox(height: 24.0),
                      const RisposteAllegatoDetails(
                        risposteallegato: ['Allegato_1.pdf'],
                      ),
                      const SizedBox(height: 22.0),
                      const ButtonRispondiDetails(),
                      const SizedBox(height: 24.0),
                    ]),
                  ))));
    });
  }
}
