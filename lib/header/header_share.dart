import 'package:flutter/material.dart';

class HeaderShare extends StatelessWidget with PreferredSizeWidget {
  final String headerTitle;
  HeaderShare({this.headerTitle}); //ヘッダータイトルを変更できるようにする
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false, // 中央寄せを解除
      title: Text(headerTitle),
      actions: [
        IconButton(
          icon: Icon(Icons.share),
          onPressed: () {
            //押したときの処理
            print('共有ボタンを押しました');
          },
        ),
      ],
    );
  }
}
