import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newssuperapp/articles/providers/articles_provider.dart';


import 'package:newssuperapp/screens/headlines_screen.dart';

void main() async {
  Get.lazyPut(() => ArticlesProvider());
  return runApp( const MyApp() );
} 



class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'headlines',
      routes: {
        'headlines': (context) => const HeadlinesScreen(),
      },
    );
  }
}