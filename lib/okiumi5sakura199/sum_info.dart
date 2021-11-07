List<SumDetail> sumList = [];
// List<SumDetail> sumList = [
//   SumDetail(
//     startKaiten: '0',
//     endKaiten: '20',
//     uchikomiTama: '250',
//     mochiTama: '0',
//     kaitenRitu: 20.0,
//     totalkaitenRitu: 20.0,
//     index: 1,
//   ),
// ];

class SumDetail {
  late String startKaiten;
  late String endKaiten;
  late String uchikomiTama;
  late String mochiTama;
  late double kaitenRitu;
  late double totalkaitenRitu;
  late int index;

  SumDetail(
      {required this.startKaiten,
      required this.endKaiten,
      required this.uchikomiTama,
      required this.mochiTama,
      required this.kaitenRitu,
      required this.totalkaitenRitu,
      required this.index});
}
