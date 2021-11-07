import 'package:flutter/material.dart';

class PageSumHeader extends StatelessWidget {
  const PageSumHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'images/okiumi5sakura199.jpg',
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text('メーカー：三洋物産'),
                Text('大当たり確率： 約1/199.8 ⇨ 約1/37'),
                Text('ST突入率： 100%'),
                Text('ST継続率： 約75.1%'),
                Text('平均連チャン数： 約3.9回'),
                Text('ボーダー： 約17.4回転/1K（等価交換）'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
