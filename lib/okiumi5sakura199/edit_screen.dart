import 'package:flutter/material.dart';
import 'package:uchikokun2_easyfree/okiumi5sakura199/status_info.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uchikokun2_easyfree/okiumi5sakura199/sum_info.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  int? _value = 0;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final startKaitenTextEditing = TextEditingController();
    final endKaitenTextEditing = TextEditingController();
    final uchikomiTamaTextEditing = TextEditingController();
    final mochiTamaTextEditing = TextEditingController();
    String startKaiten = '';
    String endKaiten = '';
    String uchikomiTama = '';
    String mochiTama = '';
    int hozon = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text('編集画面'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                      flex: 1,
                      child: Text('開始回転数',
                          style: TextStyle(
                            fontSize: 18,
                          ))),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.disabled,
                      autofocus: true,
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '未入力';
                        }
                        if (int.tryParse(value) == null) {
                          return '数字以外不可';
                        }
                        startKaiten = value;
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                      flex: 1,
                      child: Text('終了回転数',
                          style: TextStyle(
                            fontSize: 18,
                          ))),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '未入力';
                        }
                        if (int.tryParse(value) == null) {
                          return '数字以外不可';
                        }
                        endKaiten = value;
                        return null;
                      },
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                      flex: 1,
                      child: Text('打込み玉数',
                          style: TextStyle(
                            fontSize: 18,
                          ))),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '未入力';
                        }
                        if (int.tryParse(value) == null) {
                          return '数字以外不可';
                        }
                        uchikomiTama = value;
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    flex: 1,
                    child: Text('持ち玉',
                        style: TextStyle(
                          fontSize: 18,
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '未入力';
                        }
                        if (int.tryParse(value) == null) {
                          return '数字以外不可';
                        }
                        mochiTama = value;
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            Wrap(
              children: List<Widget>.generate(
                jyoutai.length,
                (int index) {
                  return ChoiceChip(
                    label: Text(jyoutai[index].statusmei),
                    selected: _value == index,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? index : 0;
                        hozon = _value!;
                      });
                    },
                  );
                },
              ).toList(),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    startKaiten = startKaitenTextEditing.text;
                    endKaiten = endKaitenTextEditing.text;
                    uchikomiTama = uchikomiTamaTextEditing.text;
                    mochiTama = mochiTamaTextEditing.text;

                    int kaitensu =
                        int.parse(endKaiten) - int.parse(startKaiten);
                    double kaitenritu =
                        kaitensu / (int.parse(uchikomiTama) / 250);

                    sumList.add(SumDetail(
                      // startKaiten: startKaiten,
                      // endKaiten: endKaiten,
                      // uchikomiTama: uchikomiTama,
                      // mochiTama: mochiTama,
                      startKaiten: startKaitenTextEditing.text,
                      endKaiten: endKaitenTextEditing.text,
                      uchikomiTama: uchikomiTamaTextEditing.text,
                      mochiTama: mochiTamaTextEditing.text,
                      kaitenRitu: kaitenritu,
                      totalkaitenRitu: kaitenritu,
                      index: hozon,
                    ));

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('記録しました')),
                    );
                  }
                },
                child: const Text('保存')),
          ],
        ),
      ),
    );
  }
}
