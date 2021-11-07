import 'package:flutter/material.dart';
import 'package:uchikokun2_easyfree/okiumi5sakura199/page_edit_detail.dart';
import 'package:uchikokun2_easyfree/okiumi5sakura199/page_sum_title.dart';
import 'package:uchikokun2_easyfree/okiumi5sakura199/page_sumheader.dart';

import 'edit_screen.dart';

class PageOkiumi5Sakura199 extends StatefulWidget {
  const PageOkiumi5Sakura199({Key? key}) : super(key: key);

  @override
  _PageOkiumi5Sakura199State createState() => _PageOkiumi5Sakura199State();
}

class _PageOkiumi5Sakura199State extends State<PageOkiumi5Sakura199> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pスーパー海物語 IN 沖縄5 桜ver.199'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        //TODO FloatingActionButton.onPressed
        onPressed: () => Navigator.push(
          this.context,
          MaterialPageRoute(
              fullscreenDialog: true, builder: (context) => EditScreen()),
        ).then((value) {
          // ここで画面遷移から戻ってきたことを検知できる
          setState(() {
            print('pop戻り');
          });
        }),
        tooltip: 'データ追加',
      ),
      body: Column(children: [
        const PageSumHeader(),
        const PageSumTitle(),
        PageEditDetail(),
        // PagesumDetail(),
        // PageSumStatus(),
      ]),
    );
  }
}
