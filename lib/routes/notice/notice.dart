import 'package:flutter/material.dart';

import '../../header/header_none.dart';

class NoticeMain extends StatelessWidget {
  final String screenName = 'Notice'; //headerに表示される名前
  final Map _noticeData = {
    'icon':
        'https://pbs.twimg.com/profile_images/1356263946638950410/s72cF6s2.jpg',
    'title': '通知の内容',
    'timestamp': '3分前',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HeaderNone(headerTitle: screenName),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(_noticeData['icon']),
              ),
              title: Text(_noticeData['title']),
              trailing: Text(_noticeData['timestamp']),
              onTap: () {
                //タップしたときの動作
                print('タップしたよ');
              },
              onLongPress: () {
                //長押ししたときの動作
                print('長押ししたよ');
              },
            );
          },
        ));
  }
}
