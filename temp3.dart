import 'dart:io';

void main(){
  File file = File('build.txt');
  // file.deleteSync();
  // print('File is deleted');

  if (file.existsSync()){
    file.deleteSync();
    print('File is deleted');
  }else{
    print('No file is available with that name');  
  }
}