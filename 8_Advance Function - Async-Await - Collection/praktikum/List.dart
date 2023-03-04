void main() {
  List<List<String>> nameList = [
    ['Budi', 'Alvarez'],
    ['Clay', 'Soeyono'],
    ['James', 'Yoi']
  ];

  Map<int, Map<String, String>> map = {};

  for (int i = 0; i < nameList.length; i++) {
    map[i] = {'First Name': nameList[i][0], 'Last Name': nameList[i][1]};
  }

  print(map);
}
