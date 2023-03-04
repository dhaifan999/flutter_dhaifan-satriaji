Future<List<int>> multiplyList(List<int> listData, int kali) async {
  List<int> hasilNilai = [];

  for (int i = 0; i < listData.length; i++) {
    await Future.delayed(Duration(milliseconds: 100));
    int nilai = listData[i] * kali;
    hasilNilai.add(nilai);
  }

  return hasilNilai;
}

void main() async {
  List<int> list = [2, 4, 6, 8, 10];
  int pengali = 10;

  List<int> hasil = await multiplyList(list, pengali);
  print(hasil);
}
