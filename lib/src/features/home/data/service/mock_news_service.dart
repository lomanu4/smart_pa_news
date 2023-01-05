import 'package:smart_pa_news/src/features/home/data/model/news_model.dart';
import 'package:smart_pa_news/src/features/home/data/service/news_service_interface.dart';

class MockNewsService implements NewsServiceInterface {
  @override
  Future<List<News>> fetchNews() {
    return Future.delayed(const Duration(seconds: 2), (() => mockedNewsList));
  }

  @override
  Future<News> fetchNewsById(int id) {
    final news = mockedNewsList.where((news) => news.id == id).toList().first;
    return Future.delayed(const Duration(seconds: 1), (() => news));
  }
}

final mockedNewsList = [
  News(
      id: 1,
      categoryId: 1,
      categoryDescription: 'Circolario',
      createdAt: DateTime.now(),
      isCanceled: false,
      enableResponse: true,
      bodyText: 'Festività natalizie. Modifiche alla viabilità ',
      image:
          'http://melzo-api.cloud.municipiumapp.it/s3/640x480/s3/4005/media/referendum_-_opzione_di_voto_fd4ba41879b3ba91cf8e07f0ef36fe55.png',
      details:
          'Si rendo noto che la Giunta Regionale del Lazio con D.G.R. n° 296 del 17.05.2022 ha disposto lemodalita’ di individuazione dei beneficiari ed i criteri di erogazione delle borse di studio.Potranno accedere al beneficio gli studenti residenti nel Comune e in possesso dei seguenti requisiti:frequentanti nell’anno scolastico 2021/22 una Scuola secondaria di secondo grado statale o paritaria( tutte le scuole superiori dal I° al 5° anno.'),
  News(
      id: 2,
      categoryId: 1,
      categoryDescription: 'Comunication',
      createdAt: DateTime.now(),
      isCanceled: false,
      enableResponse: true,
      bodyText: 'Orientamento scolastico',
      image:
          'https://s3-eu-west-1.amazonaws.com/static.comunitatrentina.it/var/denno/storage/images/comune/comunicazione/avvisi-e-news/comune-di-denno/87398-36-ita-IT/Comune-di-Denno_imagefull.jpg',
      details:
          'Si rendo noto che la Giunta Regionale del Lazio con D.G.R. n° 296 del 17.05.2022 ha disposto lemodalita’ di individuazione dei beneficiari ed i criteri di erogazione delle borse di studio.Potranno accedere al beneficio gli studenti residenti nel Comune e in possesso dei seguenti requisiti:frequentanti nell’anno scolastico 2021/22 una Scuola secondaria di secondo grado statale o paritaria( tutte le scuole superiori dal I° al 5° anno statali o paritarie con esclusione delle scuole private non paritarie che non fanno parte del sistema nazionale di istruzione) o frequentanti i primi tre anni di un percorso triennale di IeFP( quarti anni esclusi)appartenenti a nuclei familiari con un livello ISEE non superiore a € 15.748,78 desuntodall’ultima attestazione ISEE in corso di validità.La richiesta va presentata su apposito modulo in distribuzione presso l’Ufficio Scuole di questo Comune o reperibile al link sottostante o nella sezione modulistica di questo sito.redate della documentazione di cui sopra, dovranno essere presentate al Comune dal 30 Maggio al 30 Giugno 2022.'),
  News(
      id: 3,
      categoryId: 1,
      categoryDescription: 'Circolario',
      createdAt: DateTime.now(),
      isCanceled: false,
      enableResponse: true,
      bodyText: 'AVVISO DI AGGIUDICAZIONE APPALTO',
      image:
          'https://chiavari-api.cloud.municipiumapp.it/s3/640x480/s3/2049/media/notizie/ordinanze/piazza-matteotti.JPG',
      details:
          'Si rendo noto che la Giunta Regionale del Lazio con D.G.R. n° 296 del 17.05.2022 ha disposto lemodalita’ di individuazione dei beneficiari ed i criteri di erogazione delle borse di studio.Potranno accedere al beneficio gli studenti residenti nel Comune e in possesso dei seguenti requisiti:frequentanti nell’anno scolastico 2021/22 una Scuola secondaria di secondo grado statale o paritaria( tutte le scuole superiori dal I° al 5° anno statali o paritarie con esclusione delle scuole private non paritarie che non fanno parte del sistema nazionale di istruzione) o frequentanti i primi tre anni di un percorso triennale di IeFP( quarti anni esclusi)appartenenti a nuclei familiari con un livello ISEE non superiore a € 15.748,78 desuntodall’ultima attestazione ISEE in corso di validità.La richiesta va presentata su apposito modulo in distribuzione presso l’Ufficio Scuole di questo Comune o reperibile al link sottostante o nella sezione modulistica di questo sito.redate della documentazione di cui sopra, dovranno essere presentate al Comune dal 30 Maggio al 30 Giugno 2022.'),
  News(
      id: 4,
      categoryId: 1,
      categoryDescription: 'Comunication',
      createdAt: DateTime.now(),
      isCanceled: false,
      enableResponse: true,
      bodyText:
          'AVVISO DI AVVENUTO INVITO A PROCEDURA NEGOZIATA C.I.G. 94216764FE',
      image:
          'https://chiavari-api.cloud.municipiumapp.it/s3/640x480/s3/2049/media/notizie/ordinanze/piazza-matteotti.JPG',
      details:
          'Si rendo noto che la Giunta Regionale del Lazio con D.G.R. n° 296 del 17.05.2022 ha disposto lemodalita’ di individuazione dei beneficiari ed i criteri di erogazione delle borse di studio.Potranno accedere al beneficio gli studenti residenti nel Comune e in possesso dei seguenti requisiti:frequentanti nell’anno scolastico 2021/22 una Scuola secondaria di secondo grado statale o paritaria( tutte le scuole superiori dal I° al 5° anno statali o paritarie con esclusione delle scuole private non paritarie che non fanno parte del sistema nazionale di istruzione) o frequentanti i primi tre anni di un percorso triennale di IeFP( quarti anni esclusi)appartenenti a nuclei familiari con un livello ISEE non superiore a € 15.748,78 desuntodall’ultima attestazione ISEE in corso di validità.La richiesta va presentata su apposito modulo in distribuzione presso l’Ufficio Scuole di questo Comune o reperibile al link sottostante o nella sezione modulistica di questo sito.redate della documentazione di cui sopra, dovranno essere presentate al Comune dal 30 Maggio al 30 Giugno 2022.'),
];
