import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bottom_navigation_bar.dart';
import 'models/footer_model.dart';
import 'routes/history/history_main.dart';
import 'routes/home/home_main.dart';
import 'routes/save/save_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _primaryColor = Colors.amber[100]; //primaryColorを指定
  // final _primaryAccentColor = Colors.orangeAccent; //primaryAccentColorを指定

  final List _pageList = [
    HomeMain(),
    SaveMain(),
    HistoryMain(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BeerSNS',
        theme: ThemeData(primaryColor: _primaryColor),
        home: ChangeNotifierProvider<FooterModel>(
          create: (_) => FooterModel(),
          child: Consumer<FooterModel>(builder: (context, model, child) {
            return Scaffold(
              // appBar: Header(headerTitle: 'beer'), //各画面で描画するのでいらない
              body: _pageList[model.currentIndex], //中身を描画
              bottomNavigationBar: buildBottomNavigationBar(model),
            );
          }),
        ));
  }
}
