import 'package:flutter/material.dart';

import 'routes/home_page.dart';
import 'routes/movie_page.dart';
import 'routes/list_page.dart';

class TabInfo {
  String label;
  Widget widget;
  TabInfo(this.label, this.widget);
}

final List<TabInfo> _tabs = [
  TabInfo("ホーム", HomePage()),
  TabInfo("動画", MoviePage()),
  TabInfo('リスト', ListPage())
];

class ProfileHeader extends StatelessWidget with PreferredSizeWidget {
  final String headerTitle;
  final String _username = 'Takumi Sakurai'; //ユーザーネームを入れる

  ProfileHeader({this.headerTitle}); //ヘッダータイトルを変更できるようにする
  @override
  // Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Size get preferredSize => Size.fromHeight(66.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false, // 中央寄せを解除
      title: Text(_username),
      actions: [
        IconButton(
          icon: Icon(Icons.share),
          onPressed: () {
            //押したときの処理
            print('共有ボタンをタップしたよ');
          },
        )
      ],
      bottom: buildTabBar(context),
    );
  }

  TabBar buildTabBar(BuildContext context) {
    return TabBar(
      tabs: _tabs.map((TabInfo tab) {
        return Container(
          height: 20.0,
          child: Tab(text: tab.label), //TabBarラベル
        );
      }).toList(),
    );
  }
}
