import 'package:get/get.dart';
import 'package:newssuperapp/articles/models/models.dart';
import 'package:newssuperapp/articles/providers/articles_provider.dart';

class ArticlesController extends GetxController{

  final businessArticles = <Article>[];

  final articlesProvider = Get.find<ArticlesProvider>();

  ArticlesController(){
    print("Articles Controller");
    this.getArticlesByCategory("business");
  }

  Future getArticlesByCategory(String category) async {
    final articles = await articlesProvider.getArticlesByCategory(category);
    businessArticles.addAll(articles);
    update();
  }



}