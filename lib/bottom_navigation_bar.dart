import 'package:flutter/material.dart';

import 'models/footer_model.dart';

BottomNavigationBar buildBottomNavigationBar(FooterModel model) {
  final _primaryColor = Colors.amber[100]; //primaryColorを指定
  final _primaryAccentColor = Colors.orangeAccent; //primaryAccentColorを指定

  return BottomNavigationBar(
    //footer部分
    type: BottomNavigationBarType.fixed,
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: '', //ホーム
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.bookmark_border_outlined),
        label: '', //ブックマーク
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.history),
        label: '', //履歴
      ),
    ],
    currentIndex: model.currentIndex,
    onTap: (index) {
      model.currentIndex = index;
    },
    selectedItemColor: _primaryAccentColor, //選んだ物の色
    unselectedItemColor: Colors.black45, //選んでない物の色
    backgroundColor: _primaryColor, //footer背景色
  );
}
