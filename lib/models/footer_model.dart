import 'package:flutter/material.dart';

class FooterModel extends ChangeNotifier {
  int _currentIndex = 0; //最初に表示される画面

  // getterとsetterを指定しています
  // setのときにnotifyListeners()を呼ぶことアイコンタップと同時に画面を更新しています。
  get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners(); // View側に変更を通知
  }
}