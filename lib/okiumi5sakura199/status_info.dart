class Jyoutai {
  final int joutaiId;
  final String statusmei;

  Jyoutai({required this.joutaiId, required this.statusmei});
}

final List<Jyoutai> jyoutai = [
  Jyoutai(joutaiId: 0, statusmei: "投資中"),
  Jyoutai(joutaiId: 1, statusmei: "3R確変"),
  Jyoutai(joutaiId: 2, statusmei: "5R確変"),
  Jyoutai(joutaiId: 3, statusmei: "10R確変"),
  Jyoutai(joutaiId: 4, statusmei: "ST抜け"),
];
