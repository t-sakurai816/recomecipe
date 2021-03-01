import 'package:flutter/material.dart';

import 'profile_header.dart';
import 'routes/home_page.dart';
import 'routes/list_page.dart';
import 'routes/movie_page.dart';

class TabInfo {
  String label;
  Widget widget;
  TabInfo(this.label, this.widget);
}

final List<TabInfo> _tabs = [
  TabInfo("HOME", HomePage()),
  TabInfo("動画", MoviePage()),
  TabInfo("リスト", ListPage()),
];

class ProfileMain extends StatelessWidget {
  final String screenName = 'ホーム'; //headerに表示される名前
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: ProfileHeader(),
        body: TabBarView(children: _tabs.map((tab) => tab.widget).toList()),
      ),
    );
  }
}
