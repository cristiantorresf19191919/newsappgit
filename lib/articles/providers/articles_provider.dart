import 'package:get/get.dart';
import 'package:newssuperapp/articles/models/models.dart';

class ArticlesProvider extends GetConnect{

  @override
  void onInit() {
    print("ArticleProvider onInit");
  }

  Future<List<Article>> getArticlesByCategory(String category) async{
    final resp = await get("https://newsapi.org/v2/everything?q=tesla&from=2022-03-13&sortBy=publishedAt&apiKey=e6f4630d579f46e0920314d4b42fc44d");
    final newsResponse = NewsResponse.fromMap(resp.body);
    return newsResponse.articles;
  }


}