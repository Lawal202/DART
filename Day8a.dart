void main() {
  // String geeks = "GeeksToPractice";

  // try{
  //   // var show1 = geeks ~/ 0;
  //   // print(show1);
  //   int result = 12 ~/ 0;
  //   print('The result is: $result');
  // }catch(e) {
  //   print('Can not divide by zero');
  // }


// try{
//  throw Exception('This is a custom exception');
// } catch(e){
//   print(e);
// }

String name = "John";
if(name.length <5){
  throw ArgumentError('Name must be at least 5 characters long');
}else{
  print('$name');
}

void validateUsername(String username){
  if(username.isEmpty){
    throw ArgumentError('Username cannot be filled');
  }
  if(username.length < 5){
    throw ArgumentError('Username must be at least 5 characters long');
  }
}


}