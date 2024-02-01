// import 'dart:async';
// // import 'dart:html';

// void main (List<String> args) {

// final numberGenerator = NumberGenerator();

// StreamSubscription sub1 = numberGenerator.stream.listen((event){
// print('sub1: $event');
// });


// StreamSubscription sub2 = numberGenerator.stream.listen((event){
// print('sub2: ${event * event}');
// });
// }

// class NumberGenerator{

//   int _counter = 0;

//   StreamController<int> _controller = StreamController<int>.broadcast();

//   Stream<int> get stream => _controller.stream;

//   NumberGenerator() {
//      final Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       _controller.add(_counter);
//       _counter++;
//      });
//      Future.delayed(Duration(seconds: 10),(){
//       //closes stream and timer after 10 seconds
//       timer.cancel();
//       _controller.close();
//      });
//   }
// }