import 'dart:io';

void main(){
  //Create File Object


  // File f = File('temp.txt');

  File file = File('temp.txt');

  // f.writeAsStringSync('\nWelcome to Abuja', mode: FileMode.append);
  // print('Saved successfully');

  //read file content
String content = file.readAsStringSync();
print(content);
}