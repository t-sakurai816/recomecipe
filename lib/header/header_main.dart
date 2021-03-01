import 'package:flutter/material.dart';

import '../routes/profile/profile_main.dart';
import '../routes/notice/notice.dart';

class HeaderMain extends StatelessWidget with PreferredSizeWidget {
  final String headerTitle;
  HeaderMain({this.headerTitle}); //ヘッダータイトルを変更できるようにする
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false, // 中央寄せを解除
      title: Text(headerTitle),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications_outlined),
          onPressed: () {
            //押したときの処理
            print('通知ボタンを押しました');
            //画面遷移
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NoticeMain()),
            );
          },
        ),
        IconButton(
          // icon: Icon(MdiIcons.accountCircleOutline),
          icon: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
                'https://pbs.twimg.com/profile_images/1356263946638950410/s72cF6s2.jpg'),
          ),
          onPressed: () {
            //押したときの処理
            print('マイページボタンを押しました');
            //画面遷移
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileMain()),
            );
          },
        ),
      ],
    );
  }
}