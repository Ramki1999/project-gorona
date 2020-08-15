import 'package:web_scraper/web_scraper.dart';
List covid_w = new List();
List covid_i = new List();
Future<List> CovidScrap() async {
  final rawUrl = 'https://en.wikipedia.org/wiki/Template:COVID-19_pandemic_data';
  final webScraper = WebScraper('https://en.wikipedia.org');
  final endpoint = rawUrl.replaceAll(r'https://en.wikipedia.org', '');
  if (await webScraper.loadWebPage(endpoint)) {
    final Worldwide = webScraper.getElement(
        'div.mw-body-content > div.mw-content-ltr > div.mw-parser-output > #covid19-container  '
        ,[]);
//        print(Worldwide);
    final CovidList = <String>[];
    Worldwide.forEach((element) {
      final title = element['title'];
      CovidList.add('$title');
    });
    List world = CovidList[0].replaceAll(RegExp('\n'), '#').replaceAll(RegExp('##'), '#').substring(94,131).split('#').toList();
    List India = CovidList[0].replaceAll(RegExp('\n'), '#').replaceAll(RegExp('##'), '#').substring(238,270).split('#').toList();
    return([world,India]);
  }
}