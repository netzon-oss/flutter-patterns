import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/my_page.dart';
import 'pages/my_page_store.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myPageStore = MyPageStore();

    return MultiProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyPage(),
      ),
      providers: [
        Provider<MyPageStore>(create: (_) => myPageStore),
      ],
    );
  }
}