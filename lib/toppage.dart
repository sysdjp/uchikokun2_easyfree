import 'package:flutter/material.dart';
import 'package:uchikokun2_easyfree/okiumi5sakura199/page_okiumi5sakura199.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('機種一覧'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Image.asset('images/okiumi5sakura199.jpg'),
              title: const Text('Pスーパー海物語 IN 沖縄5 桜ver.199'),
              subtitle: Text('三洋物産'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        fullscreenDialog: true,
                        builder: (context) => PageOkiumi5Sakura199()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
