import 'package:flutter/material.dart';
import 'package:uchikokun2_easyfree/okiumi5sakura199/sum_info.dart';

class PageEditDetail extends StatefulWidget {
  const PageEditDetail({Key? key}) : super(key: key);

  @override
  _PageEditDetailState createState() => _PageEditDetailState();
}

class _PageEditDetailState extends State<PageEditDetail> {
  @override
  Widget build(BuildContext context) {
    if (sumList == null || sumList.isEmpty) {
      return const Card(
        child: Text('データがありません。'),
      );
    }
    print('sumList.length: ${sumList.length}');
    print('sumList: ${sumList}');
    //return (Text('テストデータ'));
    return Card(
      child: Container(
        height: 80,
        width: double.infinity,
        child: ListView.builder(
            itemCount: sumList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(sumList[index].startKaiten),
                      Text(sumList[index].endKaiten),
                      Text(sumList[index].uchikomiTama),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(sumList[index].mochiTama),
                      Text('${sumList[index].kaitenRitu}'),
                      Text('${sumList[index].totalkaitenRitu}')
                    ],
                  )
                ],
              );
            }),
      ),
    );
  }
}
