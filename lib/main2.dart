// import 'dart:async';
// import 'dart:isolate';

// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ComputationScreen(),
//     );
//   }
// }

// int result = 0;

// class ComputationScreen extends StatefulWidget {
//   @override
//   State<ComputationScreen> createState() => _ComputationScreenState();
// }

// class _ComputationScreenState extends State<ComputationScreen> {
//   bool _isLoading = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Heavy Computation')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             IconButton(
//               onPressed: _future,
//               icon: Icon(Icons.replay),
//             ),
//             Text('Result: $result'),
//             if (_isLoading) CircularProgressIndicator(),
//           ],
//         ),
//       ),
//     );
//   }

//   Future<void> _future() async {
//     setState(() {
//       _isLoading = true;
//     });

//     final receivePort = ReceivePort();
//     await Isolate.spawn(heavyComputation, receivePort.sendPort);

//     receivePort.listen((value) {
//       setState(() {
//         result = value;
//         _isLoading = false;
//       });
//       receivePort.close();
//     });
//   }

//   static void heavyComputation(SendPort sendPort) {
//     // Simulate a heavy computation
//     int sum = 0;
//     for (int i = 0; i < 1000000000; i++) {
//       sum += i;
//     }
//     sendPort.send(sum);
//   }
// }
