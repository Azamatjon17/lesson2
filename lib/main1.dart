// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ListScreen(),
//     );
//   }
// }

// class ListScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('List View')),
//       body: ListView.builder(
//         itemBuilder: (context, index) {
//           return ItemWidget(index: index);
//         },
//       ),
//     );
//   }
// }

// class ItemWidget extends StatelessWidget {
//   final int index;

//   const ItemWidget({Key? key, required this.index}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Builder(
//         builder: (context) {
//           return Text('Item $index');
//         },
//       ),
//     );
//   }
// }
