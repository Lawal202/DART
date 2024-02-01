void main(){
  List examplesList = [1,2,3,4,5,6];
  print(examplesList);
  print(examplesList[2]);
  print(examplesList.length);
  print(examplesList.isEmpty);
  print(examplesList.reversed);
  examplesList.add(7);
  print(examplesList);

// Map exampleMap = {
//   "key1":"value 1",
//   "key2":"value 2",
// };

Map<String, dynamic> exampleMap = {
  "key1":221,
  "key2":'James',
};

// print(exampleMap.entries);
print(exampleMap);
}